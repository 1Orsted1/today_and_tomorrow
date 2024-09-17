import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key, required this.timeData, this.endTimeData});
  final DateTime timeData;
  final DateTime? endTimeData;

  @override
  Widget build(BuildContext context) {
    final formatedInitialHour = DateFormat.jm().format(timeData);
    String? formatedEndHour;
    if (endTimeData != null) {
      formatedEndHour = DateFormat.jm().format(endTimeData!);
    }
    final theme = Theme.of(context);
    final textStyle = theme.textTheme;
    return Row(
      children: [
        Icon(
          Icons.alarm,
          color: theme.colorScheme.onPrimary,
          size: 16,
        ),
        const Gap(4),
        Text(
          formatedInitialHour,
          style: textStyle.labelMedium
              ?.copyWith(color: theme.colorScheme.onPrimary),
        ),
        if (formatedEndHour != null)
          Text(
            ' - $formatedEndHour',
            style: textStyle.labelMedium
                ?.copyWith(color: theme.colorScheme.onPrimary),
          ),
      ],
    );
  }
}
