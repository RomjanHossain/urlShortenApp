import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'package:url_shorten/core/params/home_page_params.dart';

/// home page floating action button
class HomeFloatingActionBtn extends StatelessWidget {
  const HomeFloatingActionBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeSwitcher.withTheme(
      builder: (_, switcher, theme) {
        return FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () => switcher.changeTheme(
            theme: theme.brightness == Brightness.light
                ? HomePageParams.darkTheme
                : HomePageParams.lightTheme,
          ),
          child: Icon(
            theme.brightness == Brightness.light
                ? Icons.brightness_low_rounded
                : Icons.brightness_high_rounded,
          ),
        );
      },
    );
  }
}
