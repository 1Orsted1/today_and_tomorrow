import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:today_and_tomorrow/presentation/dashboard/home/widgets/progress_bar_widget.dart';

class FormWrapper extends StatelessWidget {
  const FormWrapper({
    super.key,
    required this.step,
    required this.maxStep,
    required this.currentControllName,
    required this.onDone,
    required this.onBack,
    required this.child,
    required this.formGroup,
  });
  final int step;
  final int maxStep;
  final String currentControllName;
  final FormGroup formGroup;
  final VoidCallback onDone;
  final VoidCallback onBack;
  final Widget child;

//lets keep it simple

//somenthing like that:
//1- shows a progress bar and the current cuestion they are
//2- show the max questions
//3- handles the "continue" and "skip" button lock and unlock
//4- has a onFinished Event
//5- has a back event

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => onBack,
        ),
        actions: [Text("$step/$maxStep"), const Gap(12)],
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.maxFinite,
          child: Column(
            children: [
              //5 = 100 %
              //2 = progress

              ProgressBarWidget(
                  showPercentage: false,
                  percentage: ((100 / maxStep) * step).clamp(0, 100)),
              Flexible(
                child: ReactiveForm(
                  formGroup: formGroup,
                  child: Column(
                    children: [
                      child,
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () =>
                          formGroup.control(currentControllName).invalid
                              ? null
                              : onDone,
                      child: const Text("skip"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () =>
                          formGroup.control(currentControllName).invalid
                              ? null
                              : onDone,
                      child: Text(step == maxStep ? "Terminar" : "Continuar"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
