import 'package:flutter/material.dart';

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
    return BottomNavigationBar(
      backgroundColor: colors.surface,
      onTap: onTap,
      currentIndex: currentIndex,
      unselectedIconTheme: IconThemeData(color: colors.secondary),
      unselectedLabelStyle: TextStyle(color: colors.secondary),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.assessment),
          label: 'Estadisticas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Metas',
        ),
      ],
    );
  }
}
