import 'package:flutter/material.dart';
import 'package:project_app_fund/src/page/Login/LoginPage.dart';
import 'package:project_app_fund/src/page/routes.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      routes: AppRoute.all,
      home: const LoginPage(),
    );
  }
}

