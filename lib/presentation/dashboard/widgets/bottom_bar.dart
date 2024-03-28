import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';

class BottomBarD extends StatelessWidget {
  const BottomBarD({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  final ValueChanged<int> onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final t = Translations.of(context);
    return BottomNavigationBar(
      backgroundColor: colors.surface,
      onTap: onTap,
      currentIndex: currentIndex,
      unselectedIconTheme: IconThemeData(color: colors.secondary),
      unselectedLabelStyle: TextStyle(color: colors.secondary),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.assessment),
          label: t.bottomBarTitles.statistics,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: t.bottomBarTitles.home,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.star),
          label: t.bottomBarTitles.goals,
        ),
      ],
    );
  }
}
