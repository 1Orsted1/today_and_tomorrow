import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class AddHabitScreen extends StatelessWidget {
  const AddHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;
    FormGroup formGroup = FormGroup(
      {
        "habitName": FormControl<String>(validators: [Validators.required]),
        "habitHour": FormControl<String>(validators: [Validators.required])
      },
    );
    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.background,
        title: Text("Agregar habito"),
        centerTitle: false,
        leading: IconButton(
          onPressed: () => context.router.maybePop(),
          icon: const Icon(Icons.close),
        ),
      ),
      body: SingleChildScrollView(
        child: ReactiveForm(
          formGroup: formGroup,
          child: Column(
            children: [
              const Gap(32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  child: ReactiveTextField(
                    //cursorHeight: 20,
                    formControlName: "habitName",
                    decoration: const InputDecoration(
                      labelText: "nombre",
                    ),
                    style: MaterialStateTextStyle.resolveWith(
                      (Set<MaterialState> states) {
                        final Color color =
                            states.contains(MaterialState.focused)
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary;
                        return TextStyle(color: color, letterSpacing: 1.3);
                      },
                    ),
                  ),
                ),
              ),
              const Gap(24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  child: ReactiveTextField(
                    //cursorHeight: 20,
                    formControlName: "habitHour",
                    decoration: const InputDecoration(
                      labelText: "hora",
                    ),
                    style: MaterialStateTextStyle.resolveWith(
                      (Set<MaterialState> states) {
                        final Color color =
                            states.contains(MaterialState.focused)
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary;
                        return TextStyle(color: color, letterSpacing: 1.3);
                      },
                    ),
                  ),
                ),
              ),
              const Gap(16),
              ReactiveFormConsumer(
                builder: (BuildContext context, FormGroup form, Widget? child) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: width * .2),
                    child: ElevatedButton(
                        onPressed: form.valid
                            ? () {
                                context.router.maybePop();
                              }
                            : null,
                        child: Text("Save")),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
