import 'package:flutter/material.dart';

AppBar goalAppBar() {
  return AppBar(
    centerTitle: false,
    title: const Text("Metas"),
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
  );
}
