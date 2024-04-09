import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/app.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';
import 'package:today_and_tomorrow/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  await configureDependencies();
  runApp(
    TranslationProvider(
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (BuildContext context) => const App(),
      ),
    ),
  );
}
