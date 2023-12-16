import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:logger/logger.dart';
import 'package:salon/app.dart';
import 'package:salon/view/features/sign_up/sign_up_screen.dart';
import 'package:salon/web_api/auth/auth_repository.dart';

import 'firebase_options.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  Stripe.publishableKey =
      "pk_test_51O10XDKikS9TVccFzkT32iEhEPYfLxw9Dp3zDYv1owm8yYa6Br7B15Aj8Y6XqKdfILoPMO65pkE8nWHRn4q1iR4E00vW4QVWCi";
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // FCM の通知権限リクエスト
  final messaging = FirebaseMessaging.instance;

  await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final designSize =
        height < 812 ? const Size(375, 667) : const Size(375, 812);

    final currentUser = ref.read(currentUserProvider);

    return ScreenUtilInit(
      designSize: designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: currentUser == null ? const SignUpScreen() : const App(),
      ),
    );
  }
}

// ログ出力
final Logger logger = Logger(
  printer: PrettyPrinter(
    colors: true, // 色を有効
    errorMethodCount: 5, // スタックトレースに表示されるメソッドの数
    printEmojis: true, // エラーメッセージに絵文字を表示するかどうかを指定
    printTime: true, // ログメッセージにタイムスタンプを表示するかどうかを指定
    levelColors: {
      Level.trace: AnsiColor.fg(AnsiColor.grey(0.5)), // 詳細ログのカラーを灰色に設定します。
      Level.debug: const AnsiColor.fg(8), // デバッグログのカラーを黒色に設定します。
      Level.info: const AnsiColor.fg(12), // 情報ログのカラーを青色に設定します。
      Level.warning: const AnsiColor.fg(208), // 警告ログのカラーを黄色に設定します。
      Level.error: const AnsiColor.fg(196), // エラーログのカラーを赤色に設定します。
      Level.fatal: const AnsiColor.bg(196), // 致命的エラーログの背景色を赤色に設定します。
    },
  ),
);
