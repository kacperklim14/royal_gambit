import 'package:flutter/material.dart';
import 'package:royal_gambit/core/resources/app_router.dart';
import 'package:royal_gambit/core/resources/app_strings.dart';
import 'package:royal_gambit/core/resources/app_theme.dart';
import 'package:royal_gambit/core/services/service_locator.dart';

void main() {
  ServiceLocator.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: getApplicationTheme(),
      routerConfig: AppRouter().router,
    );
  }
}
