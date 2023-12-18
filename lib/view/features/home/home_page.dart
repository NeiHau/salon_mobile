import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/dialog/home_filter_dialog.dart';
import '../calendar/model/customer.dart';
import '../calendar/viewModel/customer_view_model.dart';
import 'components/home_details_page.dart';
import 'components/list_item.dart';

final dragStateProvider = StateProvider<bool>((ref) => false);

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  late Future<List<Customer>> customers;

  List<Customer> sortedCustomers = [];

  final TextEditingController _nameController = TextEditingController();

  DateTime? selectedDate;

  double _dy = 0;

  final ScrollController _scroller = ScrollController();

  final _listViewKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    customers = ref
        .read(customerNotifierProvider.notifier)
        .fetchAllCustomers()
        .then((data) {
      sortedCustomers = data;

      return sortedCustomers;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.refresh(customerNotifierProvider.notifier).fetchAllCustomers();
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _scroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isDragging = ref.watch(dragStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("ホーム"),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          _homeBody(isDragging),
          _showDialogButton(),
        ],
      ),
    );
  }

  Widget _homeBody(bool isDragging) {
    return Column(
      children: [
        Expanded(
          child: FutureBuilder<List<Customer>>(
            future: customers,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              }

              return Listener(
                onPointerMove: (event) {
                  if (!isDragging) {
                    return;
                  }
                  // イベントが発生した際のポインター（ユーザーの指）のY軸上の位置を取得
                  _dy = event.position.dy;

                  RenderBox render = _listViewKey.currentContext
                      ?.findRenderObject() as RenderBox;

                  // ListViewの左上隅の位置（ローカル座標系での原点）を、デバイスの画面全体を基準としたグローバル座標系に変換
                  Offset position = render.localToGlobal(Offset.zero);

                  double topY = position.dy;
                  double bottomY = topY + render.size.height;

                  const detectedRange = 100;
                  const moveDistance = 10;

                  Timer.periodic(
                    const Duration(milliseconds: 1000),
                    (timer) {
                      // ポインターの現在のY座標と、ListViewの上端のY座標を比べる。
                      // ポインターの位置とListView上端の距離が100以内であれば上にスクロールする。
                      if (_dy < topY + detectedRange && isDragging) {
                        // (ListViewのトップから現在表示されているコンテンツのトップまでの距離) - 10
                        var to = _scroller.offset - moveDistance;
                        to = (to < 0) ? 0 : to;
                        _scroller.jumpTo(to);
                      } else {
                        timer.cancel();
                      }
                    },
                  );

                  Timer.periodic(
                    const Duration(milliseconds: 1000),
                    (timer) {
                      if (_dy > bottomY - detectedRange &&
                          _scroller.offset <
                              _scroller.position.maxScrollExtent - 200 &&
                          isDragging) {
                        _scroller.jumpTo(_scroller.offset + moveDistance);
                      } else {
                        timer.cancel();
                      }
                    },
                  );
                },
                child: ReorderableListView.builder(
                  key: _listViewKey,
                  scrollController: _scroller,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final customer = sortedCustomers[index];

                    return CustomerTile(
                      key: ValueKey(customer.id),
                      customer: customer,
                      onTap: () {
                        // TODO: 詳細画面に遷移
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeDetailsPage(),
                          ),
                        );
                      },
                    );
                  },
                  onReorderStart: (int index) {
                    ref.watch(dragStateProvider.notifier).state = true;

                    // 並び替え開始時の座標を出力
                    RenderBox render = _listViewKey.currentContext
                        ?.findRenderObject() as RenderBox;
                    Offset startPosition = render.localToGlobal(Offset.zero);
                    debugPrint(
                        "ListView start position at reorder: ${startPosition.dy}");
                  },
                  onReorder: (int oldIndex, int newIndex) {
                    setState(() {
                      if (oldIndex < newIndex) {
                        newIndex -= 1;
                      }
                      final customer = sortedCustomers.removeAt(oldIndex);
                      sortedCustomers.insert(newIndex, customer);

                      // 座標の取得と出力
                      RenderBox render = _listViewKey.currentContext
                          ?.findRenderObject() as RenderBox;
                      Offset position = render.localToGlobal(Offset.zero);
                      double topY = position.dy;

                      debugPrint(
                          "ListView top Y position after reorder: $topY");
                    });
                  },
                  onReorderEnd: (int index) {
                    ref.watch(dragStateProvider.notifier).state = false;
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // 絞り込みを実行するダイアログを表示。
  Widget _showDialogButton() {
    return Positioned(
      right: 20.w,
      bottom: 20.h,
      child: SizedBox(
        width: 55.w,
        child: ElevatedButton(
          onPressed: () async {
            // showDialogでモーダルを開く
            DialogManager.showFilterDialog(
              context,
              _nameController,
              (p0) {
                customers = Future.value(
                  ref
                      .read(customerNotifierProvider.notifier)
                      .fetchFilteredCustomers(_nameController.text),
                );
                setState(() {});

                return customers;
              },
            );
          },
          child: const Icon(Icons.search),
        ),
      ),
    );
  }
}
