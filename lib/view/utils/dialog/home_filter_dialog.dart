import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../features/calendar/model/customer.dart';

class DialogManager {
  static Future<void> showFilterDialog(
    BuildContext context,
    TextEditingController nameController,
    Future<List<Customer>> Function(String) fetchFilteredCustomers,
  ) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("絞り込み条件"),
          content: Column(
            children: [
              SizedBox(
                width: 250.w,
                child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: '名前'),
                ),
              ),
              const Gap(20),
              // 日付で絞り込み
              // ElevatedButton(
              //   onPressed: () async {
              //     selectedDate = await showDatePicker(
              //       context: context,
              //       initialDate: DateTime.now(),
              //       firstDate: DateTime(2000),
              //       lastDate: DateTime(2101),
              //     );
              //   },
              //   child: const Text("日付選択"),
              // ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                fetchFilteredCustomers(nameController.text);
              },
              child: const Text("絞り込む"),
            ),
          ],
        );
      },
    );
  }
}
