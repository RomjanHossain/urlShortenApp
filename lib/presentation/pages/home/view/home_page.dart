import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/favorite/favorite.dart';
import 'package:url_shorten/presentation/pages/history/history.dart';
import 'package:url_shorten/presentation/pages/home/bloc/home_bloc.dart';
import 'package:url_shorten/presentation/pages/home/widgets/home_body.dart';
import 'package:url_shorten/presentation/pages/home/components/home_fab.dart';
import 'package:url_shorten/presentation/pages/home/components/home_navbar.dart';
import 'package:url_shorten/presentation/pages/settings/settings.dart';

/// {@template home_page}
/// A description for HomePage
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeState state = context.watch<HomeBloc>().state;
    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: state is HomeInitial
            ? null
            : AppBar(
                automaticallyImplyLeading: false,
                title: Text(state is FavoritePageState
                    ? 'Favorite'
                    : state is HistoryPageState
                        ? 'History'
                        : 'Settings'),
              ),
        body: state is HomeInitial
            ? const HomeView()
            : state is FavoritePageState
                ? const FavoriteView()
                : state is HistoryPageState
                    ? const HistoryView()
                    : const SettingsView(),
        floatingActionButton: const HomeFloatingActionBtn(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const HomeBottomNav(),
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
