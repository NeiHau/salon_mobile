import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../../app.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Future<void> _login() async {
  //   final email = _emailController.text;
  //   final password = _passwordController.text;
  //
  //   try {
  //     // メールアドレスとパスワードでログイン
  //     UserCredential userCredential =
  //         await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //
  //     // FCMトークンを取得
  //     String? token = await FirebaseMessaging.instance.getToken();
  //
  //     // ユーザー情報とトークンをFirestoreに保存
  //     if (token != null) {
  //       await FirebaseFirestore.instance
  //           .collection('users')
  //           .doc(userCredential.user!.uid)
  //           .set({
  //         'email': email,
  //         'fcmToken': token,
  //       }, SetOptions(merge: true));
  //     }
  //
  //     // ログイン後の画面に遷移するなど、必要な処理を追加
  //     debugPrint('Logged in with token: $token');
  //
  //     // ログイン後の画面（MainScreen）に遷移
  //     if (mounted) {
  //       Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (_) => const App()),
  //       );
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     // ログイン失敗時の処理
  //     debugPrint('Login failed: ${e.message}');
  //   }
  // }

  Future<void> _signup() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    try {
      // メールアドレスとパスワードで新規ユーザー登録
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // FCMトークンを取得
      String? token = await FirebaseMessaging.instance.getToken();

      // ユーザー情報とトークンをFirestoreに保存
      if (token != null) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user!.uid)
            .set({
          'email': email,
          'fcmToken': token,
        }, SetOptions(merge: true));
      }

      // 登録後の画面（例えばメイン画面）に遷移
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (_) => const App()), // MainScreenは遷移先の画面のウィジェット
        );
      }
    } on FirebaseAuthException catch (e) {
      // 登録失敗時の処理
      String errorMessage = '登録時にエラーが発生しました。';
      if (e.code == 'weak-password') {
        errorMessage = '提供されたパスワードが弱すぎます。';
      } else if (e.code == 'email-already-in-use') {
        errorMessage = 'このメールアドレスは既に使用されています。';
      } else if (e.code == 'invalid-email') {
        errorMessage = '無効なメールアドレスが提供されました。';
      }
      debugPrint('SignUp failed: $errorMessage');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
              onPressed: _signup,
              child: const Text('ユーザー登録する'),
            ),
          ],
        ),
      ),
    );
  }
}
