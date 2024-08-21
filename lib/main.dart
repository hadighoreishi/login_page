import 'package:flutter/material.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/pages/profile_page.dart';
import 'styles/app_colors.dart';
import 'pages/home_page.dart';
import 'pages/main_page.dart';
import 'pages/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Schyler', scaffoldBackgroundColor: AppColors.background),
      // home: Login_page(),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/main": (context) => MainPage(),
        "/counter_page": (context) => CounterPage(),
        "/profile_page": (context) => ProfilePage(),
      },
    );
  }
}
