import 'package:flutter/material.dart';

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
    return ListTile(
      title: Text('名前: ${customer.name}'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('年齢: ${customer.age}'),
          Text(
            '追加日: ${customer.date.toLocal().year}年'
            '${customer.date.toLocal().month}月'
            '${customer.date.toLocal().day}日',
          ),
          Text('詳細: ${customer.description}'),
          // Image.network(
          //   customer.imageUrl,
          //   height: 100,
          //   width: 100,
          // ),
        ],
      ),
      onTap: () => onTap(),
    );
  }
}
