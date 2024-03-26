import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      body: Center(
        child: Text(t.hello(name: "Felipe")),
      ),
    );
  }
}
