import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:today_and_tomorrow/aplication/add_habit/bloc/add_habit_bloc.dart';
import 'package:today_and_tomorrow/injection.dart';

@RoutePage()
class AddHabitScreen extends StatelessWidget implements AutoRouteWrapper {
  const AddHabitScreen({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddHabitBloc>(),
      child: this,
    );
  }

  void _addHabit(
    BuildContext context, {
    required String name,
    required DateTime hour,
  }) {
    final bloc = context.read<AddHabitBloc>();
    bloc.add(AddHabitEvent.newHabit(name: name, hour: hour));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;
    FormGroup formGroup = FormGroup(
      {
        "habitName": FormControl<String>(validators: [Validators.required]),
        "habitHour": FormControl<DateTime>(validators: [Validators.required]),
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
      body: ReactiveForm(
        formGroup: formGroup,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Gap(12),
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
                              return TextStyle(
                                  color: color, letterSpacing: 1.3);
                            },
                          ),
                        ),
                      ),
                    ),
                    const Gap(24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        child: ReactiveDateTimePicker(
                          formControlName: 'habitHour',
                          type: ReactiveDatePickerFieldType.time,
                          timePickerEntryMode: TimePickerEntryMode.inputOnly,
                          style: TextStyle(
                            color: MaterialStateColor.resolveWith(
                              (Set<MaterialState> states) {
                                Color color = colorScheme.primary;
                                if (states.contains(MaterialState.error)) {
                                  color = colorScheme.error;
                                }
                                if (states.isEmpty) {
                                  color = colorScheme.secondary;
                                }
                                return color;
                              },
                            ),
                          ),
                          decoration: const InputDecoration(
                            labelText: 'hora',
                            suffixIcon: Icon(Icons.watch_later_outlined),
                          ),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: MediaQuery(
                                  data: MediaQuery.of(context).copyWith(
                                    alwaysUse24HourFormat: true,
                                  ),
                                  child: child!,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ReactiveFormConsumer(
              builder: (BuildContext context, FormGroup form, Widget? child) {
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: ElevatedButton(
                      onPressed: form.valid
                          ? () {
                              context.router.maybePop();
                              final name = form.value["habitName"].toString();
                              final hour = form.value["habitHour"] as DateTime;
                              _addHabit(context, name: name, hour: hour);
                            }
                          : null,
                      child: Text("Save")),
                );
              },
            ),
            const Gap(12)
          ],
        ),
      ),
    );
  }
}
