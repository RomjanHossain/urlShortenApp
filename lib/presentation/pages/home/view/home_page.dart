import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/home/widgets/home_body.dart';
import 'package:url_shorten/presentation/pages/home/widgets/home_fab.dart';
import 'package:url_shorten/presentation/pages/home/widgets/home_navbar.dart';

/// {@template home_page}
/// A description for HomePage
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: const Scaffold(
        extendBody: true,
        body: HomeView(),
        floatingActionButton: HomeFloatingActionBtn(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: HomeBottomNav(),
      ),
    );
  }
}

/// Displays the Body of HomeView

class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeBody();
  }
}
