import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salon/web_api/auth/auth_repository.dart';

import '../../../app.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends ConsumerState<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.read(authRepositoryProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー登録画面'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'メールアドレス'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'パスワード'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await authNotifier.signUp(
                  _emailController.text,
                  _passwordController.text,
                );

                // ログイン後の画面（MainScreen）に遷移
                if (mounted && result == true) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const App()),
                  );
                }
              },
              child: const Text('ユーザー登録する'),
            ),
          ],
        ),
      ),
    );
  }
}
