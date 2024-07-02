import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:today_and_tomorrow/aplication/habit/habit_bloc.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';
import 'package:today_and_tomorrow/infraestructure/core/app_navigator_observer.dart';
import 'package:today_and_tomorrow/injection.dart';
import 'package:today_and_tomorrow/presentation/core/app_router.dart';

import 'package:today_and_tomorrow/theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HabitBloc>()
            ..add(
              const HabitEvent.getAll(),
            ),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
            fontFamily: 'Urbanist',
            colorScheme: AppTheme.colorScheme,
            appBarTheme: AppTheme.appBarTheme,
            elevatedButtonTheme: AppTheme.elevatedButtonStyle,
            inputDecorationTheme: AppTheme.inputDecorationTheme,
            cardTheme: AppTheme.cardTheme,
            textTheme: AppTheme.textTheme),
        locale: TranslationProvider.of(context).flutterLocale, // use provider
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        builder: DevicePreview.appBuilder,
        routerConfig: router.config(
            navigatorObservers: () => [
                  AppNavigatorObserver(),
                ]),
      ),
    );
  }
}
