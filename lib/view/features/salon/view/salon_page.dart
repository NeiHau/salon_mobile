import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:salon/view/utils/async_value_when.dart';

import '../../../../web_api/cloud_functions/repository/hello_demo.dart';
import '../../../../web_api/models/salon/salon_request_model.dart';
import '../../../../web_api/repositories/notification_repository.dart';
import '../../../components/custom_button.dart';
import '../viewModel/salon_view_model.dart';

class SalonFormPage extends ConsumerStatefulWidget {
  const SalonFormPage({Key? key}) : super(key: key);

  @override
  SalonFormPageState createState() => SalonFormPageState();
}

class SalonFormPageState extends ConsumerState<SalonFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _salonRequest = SalonRequestModel(
    age: 0, // 初期値
    gender: '',
    occupation: '',
    hairLength: 0,
    hairColor: '',
  );

  bool _isLoading = false;

  // Firebase Messagingの初期化
  // FirebaseMessaging messaging = FirebaseMessaging.instance;

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('サロンリクエストフォーム'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: '年齢',
                  hintText: '年齢を入力してください',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '年齢を入力してください';
                  }
                  return null;
                },
                onSaved: (value) {
                  _salonRequest.age = int.parse(value!);
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: '性別',
                  hintText: '性別を入力してください',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '性別を入力してください';
                  }
                  return null;
                },
                onSaved: (value) {
                  _salonRequest.gender = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: '職業',
                  hintText: '職業を入力してください',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '職業を入力してください';
                  }
                  return null;
                },
                onSaved: (value) {
                  _salonRequest.occupation = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: '髪の長さ',
                  hintText: '髪の長さを入力してください',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '髪の長さを入力してください';
                  }
                  return null;
                },
                onSaved: (value) {
                  _salonRequest.hairLength = int.parse(value!);
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: '髪の色',
                  hintText: '髪の色を入力してください',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '髪の色を入力してください';
                  }
                  return null;
                },
                onSaved: (value) {
                  _salonRequest.hairColor = value!;
                },
              ),
              Gap(30.h),
              // ボタンを押したときの処理を追加
              CustomButton(
                title: '推薦を受け取る',
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      _isLoading = true;
                    });

                    _formKey.currentState!.save();

                    await ref
                        .read(salonResponseProvider.notifier)
                        .getSalonRecommendation(_salonRequest);

                    setState(() {
                      _isLoading = false;
                    });
                  }
                },
              ),
              Gap(25.h),
              CustomButton(
                title: 'Cloud Functions 実行',
                onPressed: () async {
                  CloudFunctionsDemo.callFunction();
                },
              ),
              Gap(25.h),
              CustomButton(
                title: 'FCMトークン 取得',
                onPressed: () async {
                  final result =
                      await PushNotificationRepository.getDeviceToken();

                  debugPrint(result);
                },
              ),

              // AsyncValueのレスポンスに応じてWidgetを表示
              ref.watch(salonResponseProvider).whenWidget(
                    context: context,
                    loading: _isLoading
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Container(),
                    data: (data) {
                      return Text('推薦: ${data.recommendation}');
                    },
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
