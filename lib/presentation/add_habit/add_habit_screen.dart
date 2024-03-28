import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class AddHabitScreen extends StatelessWidget {
  const AddHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FormGroup formGroup = FormGroup(
      {
        "habitName": FormControl<String>(validators: [Validators.required]),
        "habitHour": FormControl<String>(validators: [Validators.required])
      },
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.router.maybePop();
          },
          icon: const Icon(Icons.close),
        ),
        title: Text("Agregar habito"),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: ReactiveForm(
          formGroup: formGroup,
          child: Column(
            children: [
              ReactiveTextField(
                formControlName: "habitName",
                decoration: InputDecoration(
                  hintText: "nombre",
                ),
              ),
              ReactiveTextField(
                formControlName: "habitHour",
                decoration: InputDecoration(
                  hintText: "hora",
                ),
              ),
              //ReactiveTimePicker(builder: builder),
              ReactiveFormConsumer(
                builder: (BuildContext context, FormGroup form, Widget? child) {
                  return ElevatedButton(
                      onPressed: form.valid
                          ? () {
                              context.router.maybePop();
                            }
                          : null,
                      child: Text("Save"));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
