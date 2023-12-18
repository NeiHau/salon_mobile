import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../calendar/model/customer.dart';

class CustomerTile extends StatelessWidget {
  final Customer customer;

  final Function onTap;

  const CustomerTile({
    Key? key,
    required this.customer,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: 250.h,
        width: 250.w,
        child: ListTile(
          title: Text('名前: ${customer.name}'),
          subtitle: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('年齢: ${customer.age}'),
                const Gap(20),
                Text(
                  '追加日: ${customer.date.toLocal().year}年'
                  '${customer.date.toLocal().month}月'
                  '${customer.date.toLocal().day}日',
                ),
                const Gap(20),
                Text('詳細: ${customer.description}'),
                // Image.network(
                //   customer.imageUrl,
                //   height: 100,
                //   width: 100,
                // ),
              ],
            ),
          ),
          onTap: () => onTap(),
        ),
      ),
    );
  }
}
