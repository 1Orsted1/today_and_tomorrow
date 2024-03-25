import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

AppBar homeAppBar() {
  final dateToday = DateFormat.yMMMd().format(DateTime.now());
  return AppBar(
    centerTitle: false,
    title: Text(dateToday.toString()),
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
  );
}
