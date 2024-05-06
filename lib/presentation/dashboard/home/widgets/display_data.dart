import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/presentation/core/app_router.dart';
import 'package:today_and_tomorrow/presentation/dashboard/home/widgets/week_widget.dart';

class DisplayData extends StatelessWidget {
  const DisplayData(
      {super.key, required this.habit, required this.deleteFunction});
  final Habit habit;
  final Function(int id) deleteFunction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme;
    final formatedInitialHour = DateFormat.jm().format(habit.hour);
    String? formatedEndHour;
    if (habit.endingHour != null) {
      formatedEndHour = DateFormat.jm().format(habit.endingHour!);
    }
    Widget dropDowmMenu() {
      return DropdownButton<String>(
        value: "menu",
        icon: const SizedBox.shrink(),
        elevation: 8,
        underline: const SizedBox.shrink(),
        onChanged: (String? value) {
          if (value == "edit") {
            context.router.push(AddHabitRoute(editHabit: habit));
          }
          if (value == "delete") {
            deleteFunction(habit.id);
          }
        },
        items: [
          DropdownMenuItem(
              value: "menu",
              child: Center(
                child: Icon(
                  Icons.list,
                  size: 18,
                  color: theme.colorScheme.primary,
                ),
              )),
          DropdownMenuItem(
              value: "edit",
              child: Center(
                child: Icon(
                  Icons.edit,
                  size: 18,
                  color: theme.colorScheme.primary,
                ),
              )),
          DropdownMenuItem(
              value: "delete",
              child: Center(
                child: Icon(
                  Icons.delete,
                  size: 18,
                  color: theme.colorScheme.primary,
                ),
              ))
        ],
      );
    }

    Widget progressBar({required Habit habit}) {
      final percentage = habit.getPercentage();
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinearProgressIndicator(
            value: percentage / 100,
            color: theme.colorScheme.primary,
            backgroundColor: theme.colorScheme.background,
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            minHeight: 10,
          ),
          Text(
            "$percentage%",
            style: textStyle.bodySmall,
          ),
        ],
      );
    }

    return Card(
      child: Dismissible(
        background: Container(
          color: Colors.white,
        ),
        key: UniqueKey(),
        onDismissed: (direction) {
          deleteFunction(habit.id);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              behavior: SnackBarBehavior.floating,
              margin: const EdgeInsets.only(bottom: 0, right: 70, left: 70),
              padding: const EdgeInsets.all(5),
              duration: const Duration(milliseconds: 800),
              content: Container(
                  alignment: Alignment.center,
                  height: 35,
                  child: Text('Task ${habit.id} deleted'))));
        },
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                child: StaggeredGrid.count(
                  axisDirection: AxisDirection.down,
                  crossAxisCount: 32,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  children: [
                    //?title
                    StaggeredGridTile.count(
                      crossAxisCellCount: 29,
                      mainAxisCellCount: 3,
                      child: Text(
                        habit.name,
                        style: textStyle.titleMedium,
                      ),
                    ),
                    //?settings
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 3,
                      child: dropDowmMenu(),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 14,
                      mainAxisCellCount: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.alarm,
                            color: theme.colorScheme.secondary,
                            size: 16,
                          ),
                          const Gap(4),
                          Text(
                            formatedInitialHour,
                            style: textStyle.labelMedium,
                          ),
                          if (formatedEndHour != null)
                            Text(
                              ' - $formatedEndHour',
                              style: textStyle.labelMedium,
                            ),
                        ],
                      ),
                    ),
                    //?week Widget
                    StaggeredGridTile.count(
                      crossAxisCellCount: 17,
                      mainAxisCellCount: 7,
                      child: WeekWidget(
                        habit: habit,
                      ),
                    ),
                    //?white space
                    const StaggeredGridTile.count(
                      crossAxisCellCount: 32,
                      mainAxisCellCount: 1,
                      child: SizedBox.shrink(),
                    ),
                    //?white space
                    const StaggeredGridTile.count(
                      crossAxisCellCount: 14,
                      mainAxisCellCount: 1,
                      child: SizedBox.shrink(),
                    ),
                    //?percentage of success
                    StaggeredGridTile.count(
                      crossAxisCellCount: 18,
                      mainAxisCellCount: 3,
                      child: Container(child: progressBar(habit: habit)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
