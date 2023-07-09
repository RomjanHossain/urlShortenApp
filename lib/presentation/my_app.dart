import 'package:flutter/material.dart';
import 'package:url_shorten/core/app_core.dart';
import 'pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Strings.primaryColor),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
