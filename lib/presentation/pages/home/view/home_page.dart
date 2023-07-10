import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/home/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/home/widgets/home_body.dart';

/// {@template home_page}
/// A description for HomePage
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        extendBody: true,
        body: const HomeView(),
        floatingActionButton: ThemeSwitcher.withTheme(
          builder: (_, switcher, theme) {
            return FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () => switcher.changeTheme(
                theme: theme.brightness == Brightness.light
                    ? FlexThemeData.dark(
                        scheme: FlexScheme.indigoM3,
                        useMaterial3: true,
                      )
                    : FlexThemeData.light(
                        scheme: FlexScheme.indigoM3,
                        useMaterial3: true,
                      ),
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          activeIndex: context.watch<HomeBloc>().state is HomeInitial
              ? 0
              : context.watch<HomeBloc>().state is SettingPageState
                  ? 1
                  : 2,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 10,
          rightCornerRadius: 10,
          // splashSpeedInMilliseconds: 800,

          icons: [
            Icons.home,
            Icons.settings,
            Icons.history,
            Icons.history,
          ],
          onTap: (x) {
            context.read<HomeBloc>().add(ChangePageEvent(x));
          },
        ),
      ),
    );
  }
}

/// {@template home_view}
/// Displays the Body of HomeView
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeBody();
  }
}
