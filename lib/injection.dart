import 'package:auto_route/auto_route.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async {
  await getIt.init();
  final flutterLocalNotificationsPlugin =
      getIt<FlutterLocalNotificationsPlugin>();
  var androidInitializationSettings =
      const AndroidInitializationSettings("@mipmap/ic_launcher");
  var initializeIOSSettings = const DarwinInitializationSettings();
  var initializeSettings = InitializationSettings(
    android: androidInitializationSettings,
    iOS: initializeIOSSettings,
  );
  flutterLocalNotificationsPlugin.initialize(
    initializeSettings,
    onDidReceiveNotificationResponse: (details) {
      const String data = "Data Achieved from foreground notifications";
      print("Data: $data");
    },
  );
}
