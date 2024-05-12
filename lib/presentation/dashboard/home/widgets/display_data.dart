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

    void triggerMenu() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            //your content
            return SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(),
                    Flexible(
                      flex: 4,
                      child: GestureDetector(
                        onTap: () {
                          context.router.popAndPush(
                            AddHabitRoute(
                              editHabit: habit,
                            ),
                          );
                        },
                        child: Card(
                          color: theme.colorScheme.background,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Editar",
                                  style: theme.textTheme.titleMedium,
                                ),
                                Icon(
                                  Icons.edit,
                                  color: theme.colorScheme.secondary,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: GestureDetector(
                        onTap: () {
                          deleteFunction(habit.id);
                          context.router.maybePop();
                        },
                        child: Card(
                          color: theme.colorScheme.background,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Eliminar",
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    color: theme.colorScheme.error,
                                  ),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: theme.colorScheme.error,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            );
          });
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
                    child: IconButton(
                      onPressed: () => triggerMenu(),
                      icon: Icon(
                        Icons.list,
                        color: theme.colorScheme.primary,
                        size: 18,
                      ),
                    ),
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
    );
  }
}
