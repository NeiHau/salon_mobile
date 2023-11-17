import 'package:flutter/material.dart';

class HomeDetailsPage extends StatefulWidget {
  const HomeDetailsPage({super.key});

  @override
  State<HomeDetailsPage> createState() => _HomeDetailsPageState();
}

class _HomeDetailsPageState extends State<HomeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("詳細画面"),
      ),
      body: const Center(child: Text("詳細")),
    );
  }
}
