import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:today_and_tomorrow/aplication/habit/habit_bloc.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';
import 'package:today_and_tomorrow/presentation/dashboard/home/widgets/habit_card.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HabitBloc habitBloc;

  Widget Function(BuildContext, int) _itemBuilder(List<Habit> rawList) {
    final habits = rawList.reversed.toList();
    return (BuildContext context, int index) => HabitCard(
        habit: habits[index],
        deleteFunction: (int id) => habitBloc.add(HabitEvent.delete(id: id)),
        index: index);
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    habitBloc = context.watch<HabitBloc>();

    return Scaffold(
      body: Container(
        height: double.infinity,
        child: StreamBuilder<List<Habit>>(
            stream: habitBloc.stream.map((event) => event.habitList),
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
