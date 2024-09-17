import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({super.key, required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$percentage%",
          style: textStyle.bodyMedium?.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        const Gap(8),
        Expanded(
          child: LinearProgressIndicator(
            value: percentage / 100,
            color: theme.colorScheme.secondary,
            backgroundColor: theme.colorScheme.scrim,
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            minHeight: 10,
          ),
        ),
      ],
    );
  }
}
