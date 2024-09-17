import 'package:flutter/material.dart';

AppBar statisticsAppBar(BuildContext context) {
  return AppBar(
    centerTitle: false,
    elevation: 0,
    title: const Text("Estadisticas"),
    backgroundColor: Theme.of(context).colorScheme.background,
  );
}
