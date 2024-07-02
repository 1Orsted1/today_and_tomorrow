import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

@module
abstract class LocalNotificationsModule {
  @LazySingleton()
  FlutterLocalNotificationsPlugin get flutterLocalNotificationsPlugin =>
      FlutterLocalNotificationsPlugin();
}
