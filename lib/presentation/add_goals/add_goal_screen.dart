import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/app.dart';

@RoutePage()
class AddGoalScreen extends StatefulWidget {
  const AddGoalScreen({super.key});

  @override
  State<AddGoalScreen> createState() => _GoalScreen();
}

class _GoalScreen extends State<AddGoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Add goals new flow'),
      ),
    );
  }
}
