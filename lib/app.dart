import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';
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
      locale: TranslationProvider.of(context).flutterLocale, // use provider
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: _router.config(),
    );
  }
}
