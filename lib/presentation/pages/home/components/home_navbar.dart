import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_shorten/core/params/history_page_params.dart';
import 'package:url_shorten/core/params/home_page_params.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/history/bloc/history_bloc.dart';
import 'package:url_shorten/presentation/pages/home/bloc/home_bloc.dart';

/// home page bottom navigation bar
class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final HomeState state = context.watch<HomeBloc>().state;
    return AnimatedBottomNavigationBar(
      activeIndex: state is HomeInitial
          ? 0
          : state is FavoritePageState
              ? 1
              : state is HistoryPageState
                  ? 2
                  : 3,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.defaultEdge,
      leftCornerRadius: HomePageParams.bottomNavCornerRaidus,
      rightCornerRadius: HomePageParams.bottomNavCornerRaidus,
      blurEffect: true,
      hideAnimationCurve: Curves.easeOut,
      elevation: 0,
      icons: const <IconData>[
        Icons.home_rounded,
        Icons.favorite_rounded,
        Icons.history_rounded,
        Icons.settings_rounded,
      ],
      onTap: (int x) {
        if (x == 1) {
          context.read<FavoriteBloc>().add(const CustomFavoriteEvent());
        }
        if (x == 2) {
          context
              .read<HistoryBloc>()
              .add(const ChangeSegmentBtnE(HistorySegmentButtonEnum.shorturl));
        }
        context.read<HomeBloc>().add(ChangePageEvent(x));
      },
      backgroundColor: colorScheme.primaryContainer,
      activeColor: colorScheme.tertiary,
      inactiveColor: colorScheme.onBackground,
    );
  }
}
