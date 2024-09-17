import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today_and_tomorrow/aplication/habit/habit_bloc.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/presentation/dashboard/home/widgets/habit_card.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late HabitBloc habitBloc = context.watch<HabitBloc>();

    Widget Function(BuildContext, int) itemBuilder(List<Habit> rawList) {
      final habits = rawList.reversed.toList();
      return (BuildContext context, int index) => Column(
            children: [
              HabitCard(habit: habits[index]),
              const Divider(),
            ],
          );
    }

    return Scaffold(
      body: SizedBox(
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
                return Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      itemCount: snapshot.hasData ? snapshot.data!.length : 0,
                      itemBuilder: itemBuilder(snapshot.data ?? [])),
                );
              }
            }),
      ),
    );
  }
}
