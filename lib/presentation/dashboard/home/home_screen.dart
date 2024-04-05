import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today_and_tomorrow/aplication/add_habit/add_habit_bloc.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final bloc = context.watch<AddHabitBloc>();

    return Scaffold(
      body: Expanded(
        child: StreamBuilder(
            stream: null,
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
                    itemBuilder: Container(snapshot.data ?? []));
              }
            }),
      ),
    );
  }
}
