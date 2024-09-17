import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';
import 'package:today_and_tomorrow/presentation/core/app_router.dart';

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
    final width = MediaQuery.of(context).size.width;
    final t = Translations.of(context);
    return SizedBox(
      height: 60,
      width: double.maxFinite,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width / 5).copyWith(bottom: 6),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: colors.surface,
                child: IconButton(
                    onPressed: () => onTap(0),
                    icon: Icon(
                      Icons.home,
                      color:
                          currentIndex == 0 ? colors.onSurface : colors.scrim,
                    )),
              ),
              const Gap(32),
              InkResponse(
                  borderRadius: BorderRadius.circular(20),
                  containedInkWell: true,
                  onTap: () => context.router.push(const AddGoalRoute()),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: colors.secondary,
                    child: const Icon(Icons.add),
                  )),
              const Gap(32),
              CircleAvatar(
                backgroundColor: colors.surface,
                child: IconButton(
                  onPressed: () => onTap(1),
                  icon: Icon(
                    Icons.bar_chart,
                    color: currentIndex == 1 ? colors.onSurface : colors.scrim,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // BottomNavigationBar(
    //   backgroundColor: colors.surface,
    //   onTap: onTap,
    //   currentIndex: currentIndex,
    //   unselectedIconTheme: IconThemeData(color: colors.secondary),
    //   unselectedLabelStyle: TextStyle(color: colors.secondary),
    //   items: [
    //     BottomNavigationBarItem(
    //       icon: const Icon(Icons.assessment),
    //       label: t.bottomBarTitles.statistics,
    //     ),
    //     BottomNavigationBarItem(
    //       icon: const Icon(Icons.home),
    //       label: t.bottomBarTitles.home,
    //     ),
    //     BottomNavigationBarItem(
    //       icon: const Icon(Icons.star),
    //       label: t.bottomBarTitles.goals,
    //     ),
    //   ],
    // );
  }
}
