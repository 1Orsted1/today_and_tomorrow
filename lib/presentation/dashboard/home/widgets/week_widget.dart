import 'package:flutter/material.dart';

class WeekWidget extends StatefulWidget {
  const WeekWidget({super.key});

  @override
  State<WeekWidget> createState() => _WeekWidgetState();
}

class _WeekWidgetState extends State<WeekWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dayWidget(dayS: 'L', dayI: 1, dayStatus: true),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dayWidget(dayS: 'M', dayI: 2, dayStatus: true),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dayWidget(dayS: 'M', dayI: 3, dayStatus: false),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dayWidget(dayS: 'J', dayI: 4, dayStatus: true),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dayWidget(dayS: 'V', dayI: 5, dayStatus: null),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dayWidget(dayS: 'S', dayI: 6, dayStatus: null),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dayWidget(dayS: 'D', dayI: 7, dayStatus: null),
          ),
        ],
      ),
    );
  }

  List<Widget> dayWidget(
      {required String dayS, required int dayI, required bool? dayStatus}) {
    return [
      Text(dayS),
      if (dayStatus == null)
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 8,
        ),
      if (dayStatus == true) //number of the monday
        CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: Center(
            child: Icon(
              Icons.check_rounded,
              color: Colors.white,
              size: 15,
            ),
          ),
          radius: 8,
        ),
      if (dayStatus == false)
        CircleAvatar(
          radius: 8,
          child: Center(
              child: Icon(
            Icons.cancel,
            size: 16,
          )),
        ),
      Text(dayI.toString()),
    ];
  }
}
