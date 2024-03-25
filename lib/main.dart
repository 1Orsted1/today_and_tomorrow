import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/app.dart';
import 'package:today_and_tomorrow/injection.dart';

void main() {
  configureDependencies();
  runApp(const App());
}
