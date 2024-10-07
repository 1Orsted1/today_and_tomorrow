import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({
    super.key,
    required this.percentage,
    this.showPercentage = true,
  });
  final double percentage;
  final bool showPercentage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (showPercentage)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              "$percentage%",
              style: textStyle.bodyMedium?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        Expanded(
          child: TweenAnimationBuilder(
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeInOut,
            tween: Tween(
              begin: 0,
              end: percentage / 100,
            ),
            builder: (context, value, _) => LinearProgressIndicator(
              value: value.toDouble(),
              color: theme.colorScheme.secondary,
              backgroundColor: theme.colorScheme.scrim,
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              minHeight: 10,
            ),
          ),
        ),
      ],
    );
  }
}
