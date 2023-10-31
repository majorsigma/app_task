import 'package:app_task/gen/assets.gen.dart';
import 'package:app_task/gen/fonts.gen.dart';
import 'package:app_task/pages/finances_page.dart';
import 'package:app_task/utils/colors.dart';
import 'package:app_task/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: kPrimaryColor,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Task",
      theme: lightTheme,
      home: const FinancesScreen(),
    );
  }
}
