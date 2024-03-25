import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/injection.dart';
import 'package:today_and_tomorrow/presentation/core/app_router.dart';
import 'package:today_and_tomorrow/theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        colorScheme: AppTheme.coloScheme,
        appBarTheme: AppTheme.appBarTheme,
      ),
      routerConfig: _router.config(),
    );
  }
}
