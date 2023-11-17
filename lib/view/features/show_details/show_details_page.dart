import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../components/custom_snackbar.dart';
import '../calendar/view/componets/input_details_form.dart';
import '../calendar/viewModel/customer_view_model.dart';
import '../reservation/viewModel/reservation_view_model.dart';

class ShowDetailsPage extends ConsumerStatefulWidget {
  const ShowDetailsPage({
    super.key,
    required this.selectedDate,
    this.eventDates,
    this.reservationList,
  });

  final DateTime selectedDate;
  final Map<DateTime, List>? eventDates;

  final Map<DateTime, List>? reservationList;

  @override
  ShowDetailsPageState createState() => ShowDetailsPageState();
}

class ShowDetailsPageState extends ConsumerState<ShowDetailsPage> {
  @override
  void initState() {
    debugPrint("Event Details in ShowDetailsPage: ${widget.eventDates}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedDayKey = DateTime(widget.selectedDate.year,
        widget.selectedDate.month, widget.selectedDate.day);

    final eventDetails = ref.watch(customerNotifierProvider).eventDetails;

    final reservationList =
        ref.watch(reservationNotifierProvider).reservationList;

    final eventsForSelectedDate = widget.eventDates?[selectedDayKey]
            ?.map((docId) {
              final customer = eventDetails?[docId];
              return customer;
            })
            .where((customer) => customer != null)
            .toList() ??
        [];

    final reservationLists = widget.reservationList?[selectedDayKey]
            ?.map((docId) {
              final reservation = eventDetails?[docId];
              return reservation;
            })
            .where((reservation) => reservation != null)
            .toList() ??
        [];

    debugPrint("Events for selected date: $eventsForSelectedDate"); // 追加

    return eventsForSelectedDate.isEmpty
        ? Scaffold(
            appBar: AppBar(
              title: const Text("詳細画面"),
              actions: [
                ElevatedButton(
                  onPressed: () async {
                    bool result = await ref
                        .read(reservationNotifierProvider.notifier)
                        .cancelReservation(widget.selectedDate);
                    if (mounted && result) {
                      CustomSnackbar.showTopSnackBar(context, '予約をキャンセルしました。');
                    } else {
                      CustomSnackbar.showTopSnackBar(
                          context, '予約のキャンセルに失敗しました。');
                    }
                  },
                  child: const Text('予約をキャンセル'),
                ),
              ],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("データがありません。追加しましょう。"),
                  const SizedBox(height: 16), // スペーサー
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InputDetailsForm(),
                        ),
                      );
                    },
                    child: const Text("追加画面へ"),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text("Details for ${widget.selectedDate.toLocal()}"),
            ),
            body: ListView.builder(
              itemCount: eventsForSelectedDate.length,
              itemBuilder: (context, index) {
                final customer = eventsForSelectedDate[index];

                if (customer == null) {
                  return const ListTile(
                    title: Text('Unknown'),
                  );
                }
                return ListTile(
                  title: Text('名前: ${customer.name}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('年齢: ${customer.age}'),
                      Text('追加日: ${customer.date.toLocal()}'),
                      Text('詳細: ${customer.description}'),
                      // Image.network(customer.imageUrl, height: 100, width: 100),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () async {
                      bool result = await ref
                          .read(customerNotifierProvider.notifier)
                          .deleteCustomer(customer.id);

                      if (result) {
                        // 削除が成功した場合にデータを再取得（再描画）
                        ref
                            .refresh(customerNotifierProvider.notifier)
                            .fetchDates();
                      }
                      if (mounted) {
                        CustomSnackbar.showTopSnackBar(context, 'データを削除しました。');
                      }
                    },
                  ),
                );
              },
            ),
          );
  }
}
