import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/core/params/home_page_params.dart';
import 'package:url_shorten/presentation/pages/home/bloc/home_bloc.dart';

/// home page bottom navigation bar
class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme _colorScheme = Theme.of(context).colorScheme;
    HomeState _state = context.watch<HomeBloc>().state;
    return AnimatedBottomNavigationBar(
      activeIndex: _state is HomeInitial
          ? 0
          : _state is FavoritePageState
              ? 1
              : _state is HistoryPageState
                  ? 2
                  : 3,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: HomePageParams.bottomNavCornerRaidus,
      rightCornerRadius: HomePageParams.bottomNavCornerRaidus,
      icons: const [
        Icons.home,
        Icons.favorite,
        Icons.history,
        Icons.settings,
      ],
      onTap: (x) {
        context.read<HomeBloc>().add(ChangePageEvent(x));
      },
      backgroundColor: _colorScheme.primaryContainer,
      activeColor: _colorScheme.tertiary,
      inactiveColor: _colorScheme.onBackground,
    );
  }
}
