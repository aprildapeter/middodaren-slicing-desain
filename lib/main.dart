import 'package:flutter/material.dart';
import 'package:middodaren/pages/chat_page.dart';
import 'package:middodaren/pages/detail_paketwo_page.dart';
import 'package:middodaren/pages/home/main_page.dart';
import 'package:middodaren/pages/paketwo_page.dart';
import 'package:middodaren/pages/sign-in_page.dart';
import 'package:middodaren/pages/sign-up_page.dart';
import 'package:middodaren/pages/splashscreen.dart';
import 'package:middodaren/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/paket-wo': (context) => PaketWOPage(),
        '/detail-paket': (context) => DetailPAketWoPge(),
        '/konsultasi': (context) => ChatPage(),
      },
    );
  }
}
