// 他のimport宣言...

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salon/view/utils/async_value_when.dart';

import '../../../viewModel/salon_view_model.dart';
import '../../../web_api/models/salon/salon_request_model.dart';
import '../../components/custom_button.dart';
import '../../utils/app_text_styles.dart';

class SalonFormPage extends ConsumerStatefulWidget {
  const SalonFormPage({Key? key}) : super(key: key);

  @override
  SalonFormPageState createState() => SalonFormPageState();
}

class SalonFormPageState extends ConsumerState<SalonFormPage> {
  final _formKey = GlobalKey<FormState>();

  // SalonRequestModelのインスタンスを作成し、デフォルト値を設定します
  final _salonRequest = SalonRequestModel(
    age: 0, // 初期値
    gender: '',
    occupation: '',
    hairLength: 0,
    hairColor: '',
  );

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
              // フォームフィールドの実装...
              // 年齢、性別、職業、髪の長さ、髪の色のTextFormFieldを作成します
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
              // ボタンを押したときの処理を追加
              CustomButton(
                title: '推薦を受け取る',
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // ViewModelでgetRecommendationを呼び出す
                    await ref
                        .read(salonResponseProvider.notifier)
                        .getSalonRecommendation(_salonRequest);
                  }
                },
              ),

              // AsyncValueのレスポンスに応じてWidgetを表示
              ref.watch(salonResponseProvider).whenWidget(
                    context: context,
                    loading: const SizedBox(),
                    error: (error, stack) =>
                        _errorWidget(context, error, stack),
                    data: (data) {
                      // データに基づいたウィジェットを返します
                      return Text('推薦: ${data.recommendation}');
                    },
                  ),
            ],
          ),
        ),
      ),
    );
  }

  // エラーウィジェットのビルド
  Widget _errorWidget(BuildContext context, Object error, StackTrace? stack) {
    return Center(
      child: Text(
        'エラーが発生しました: $error',
        textAlign: TextAlign.center,
        style: AppTextStyles.lightBlackBody2,
      ),
    );
  }
}
