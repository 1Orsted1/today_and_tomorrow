import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:today_and_tomorrow/aplication/habit/habit_bloc.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HabitBloc watchHabitBloc;

  Widget Function(BuildContext, int) _itemBuilder(List<Habit> rawList) {
    final habits = rawList.reversed.toList();
    return (BuildContext context, int index) => Card(
          child: Dismissible(
            background: Container(
              color: Colors.red,
            ),
            key: UniqueKey(), //Key('dismissed_$index'),
            onDismissed: (direction) {
              // Remove the task from the store.
              //objectbox.removeTask(tasks[index].id);
              // List updated via watched query stream.
              watchHabitBloc.add(HabitEvent.delete(id: habits[index].id));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  behavior: SnackBarBehavior.floating,
                  margin: const EdgeInsets.only(bottom: 0, right: 70, left: 70),
                  padding: const EdgeInsets.all(5),
                  duration: const Duration(milliseconds: 800),
                  content: Container(
                      alignment: Alignment.center,
                      height: 35,
                      child: Text('Task ${habits[index].id} deleted'))));
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18.0, horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${habits[index].id} ${habits[index].name} \n ${habits[index].hour}',
                          // Provide a Key for the integration test
                          key: Key('list_item_$index'),
                        ),
                        const Gap(16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    watchHabitBloc = context.watch<HabitBloc>();

    return Scaffold(
      body: Container(
        height: double.infinity,
        child: StreamBuilder<List<Habit>>(
            stream: watchHabitBloc.stream.map((event) => event.habitList),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                debugPrintStack(stackTrace: snapshot.stackTrace);
                return Column(
                  children: [
                    const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 60,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Text('Error: ${snapshot.error}'),
                    ),
                  ],
                );
              } else {
                return ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    itemCount: snapshot.hasData ? snapshot.data!.length : 0,
                    itemBuilder: _itemBuilder(snapshot.data ?? []));
              }
            }),
      ),
    );
  }
}
