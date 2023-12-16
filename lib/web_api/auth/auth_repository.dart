import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view/features/sign_up/sign_up_screen.dart';

// 現在のユーザーを取得
final currentUserProvider = Provider((ref) {
  final currentUser = FirebaseAuth.instance.currentUser;

  return currentUser;
});

final authRepositoryProvider =
    StateNotifierProvider<AuthRepository, AuthState>((ref) {
  return AuthRepository();
});

class AuthState {
  final User? user;
  final String? errorMessage;

  AuthState({this.user, this.errorMessage});
}

class AuthRepository extends StateNotifier<AuthState> {
  AuthRepository() : super(AuthState());

  // ログイン
  Future<void> login(
    String email,
    String password,
  ) async {
    try {
      // メールアドレスとパスワードでログイン
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
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

      // ログイン後の画面に遷移するなど、必要な処理を追加
      debugPrint('Logged in with token: $token');
    } on FirebaseAuthException catch (e) {
      // ログイン失敗時の処理
      debugPrint('Login failed: ${e.message}');
    }
  }

  // ユーザー新規登録
  Future<bool> signUp(
    String email,
    String password,
  ) async {
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
            .set(
          {
            'email': email,
            'fcmToken': token,
          },
          SetOptions(merge: false),
        );
      }

      return true;
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

      return false;
    }
  }

  // ログアウト
  Future<void> signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();

      // SignupPageへの遷移
      if (mounted) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const SignUpScreen()),
          (Route<dynamic> route) => false,
        );
      }

      debugPrint("ログアウトしました");
    } catch (e) {
      debugPrint("ログアウト中にエラーが発生しました: $e");
    }
  }
}
