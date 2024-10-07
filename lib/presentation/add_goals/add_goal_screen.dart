import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:today_and_tomorrow/app.dart';
import 'package:today_and_tomorrow/presentation/core/form_wrapper.dart';

@RoutePage()
class AddGoalScreen extends StatefulWidget {
  const AddGoalScreen({super.key});

  @override
  State<AddGoalScreen> createState() => _GoalScreen();
}

class _GoalScreen extends State<AddGoalScreen> {
  final formGroup = FormGroup({
    "dummie": FormControl<bool>(validators: [Validators.required])
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: FormWrapper(
        step: 2,
        maxStep: 5,
        control: 'dummie',
        onDone: () {},
        onBack: () {},
        formGroup: formGroup,
        child: SizedBox.shrink(),
      ),
    );
  }
}
