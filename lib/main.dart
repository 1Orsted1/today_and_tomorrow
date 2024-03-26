import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/app.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';
import 'package:today_and_tomorrow/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  configureDependencies();
  runApp(TranslationProvider(child: const App()));
}
