import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:today_and_tomorrow/aplication/habit/habit_bloc.dart';

@RoutePage()
class AddHabitScreen extends StatefulWidget {
  const AddHabitScreen({super.key, this.editId});
  final int? editId;
  @override
  State<AddHabitScreen> createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  late FormGroup formGroup;
  @override
  void initState() {
    initializeForm();
    if (widget.editId != null) {
      context.read<HabitBloc>().add(
            HabitEvent.getHabitById(id: widget.editId!),
          );
    }

    super.initState();
  }

  void initializeForm() {
    formGroup = FormGroup(
      {
        "name": FormControl<String>(validators: [Validators.required]),
        "hour": FormControl<DateTime>(validators: [Validators.required]),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;
    final habitBloc = context.watch<HabitBloc>();
    final habitState = habitBloc.state;

    void addHabit(BuildContext context,
        {required Map<String, dynamic> formData}) {
      habitBloc.add(HabitEvent.newHabit(formData: formData));
    }

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
      body: BlocListener<HabitBloc, HabitState>(
        listenWhen: (prev, current) =>
            !prev.habitJustCreated && current.habitJustCreated,
        listener: (context, state) {
          context.router.maybePop();
        },
        child: LoadingOverlay(
          isLoading: habitState.isLoading,
          progressIndicator: const CircularProgressIndicator.adaptive(),
          child: ReactiveForm(
            formGroup: formGroup,
            child: GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Gap(12),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: SizedBox(
                              child: ReactiveTextField(
                                //cursorHeight: 20,
                                formControlName: "name",
                                maxLength: 30,

                                decoration: const InputDecoration(
                                  labelText: "nombre",
                                ),
                                style: MaterialStateTextStyle.resolveWith(
                                  (Set<MaterialState> states) {
                                    final Color color = states
                                            .contains(MaterialState.focused)
                                        ? Theme.of(context).colorScheme.primary
                                        : Theme.of(context)
                                            .colorScheme
                                            .secondary;
                                    return TextStyle(
                                        color: color, letterSpacing: 1.3);
                                  },
                                ),
                              ),
                            ),
                          ),
                          const Gap(24),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: SizedBox(
                              child: ReactiveDateTimePicker(
                                formControlName: 'hour',
                                type: ReactiveDatePickerFieldType.time,
                                timePickerEntryMode:
                                    TimePickerEntryMode.inputOnly,
                                style: TextStyle(
                                  color: MaterialStateColor.resolveWith(
                                    (Set<MaterialState> states) {
                                      Color color = colorScheme.primary;
                                      if (states
                                          .contains(MaterialState.error)) {
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
                    builder:
                        (BuildContext context, FormGroup form, Widget? child) {
                      return Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: width * .2),
                        child: ElevatedButton(
                            onPressed: form.valid
                                ? () {
                                    //_addHabit(context, name: name, hour: hour);
                                    addHabit(context, formData: form.value);
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
          ),
        ),
      ),
    );
  }
}
