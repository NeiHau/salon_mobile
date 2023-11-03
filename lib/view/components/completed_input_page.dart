import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Success'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('追加しました'),
            ElevatedButton(
              onPressed: () {
                // CalendarPageに遷移
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const HomePage(),
                //   ),
                // );
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text('ホームページに戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
