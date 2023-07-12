import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:url_shorten/core/app_core.dart';
import 'package:url_shorten/core/params/home_page_params.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/favorite_bloc.dart';
import 'package:url_shorten/presentation/pages/history/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/settings/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/viewshorturl_bloc.dart';
import 'pages/home/bloc/home_bloc.dart';
import 'pages/splash/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isPlatformDark =
        WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
    final initTheme =
        isPlatformDark ? HomePageParams.darkTheme : HomePageParams.lightTheme;
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
        ),
        // favorite
        BlocProvider(
          create: (context) => FavoriteBloc(),
        ),
        // history
        BlocProvider(
          create: (context) => HistoryBloc(),
        ),
        // settings
        BlocProvider(
          create: (context) => SettingsBloc(),
        ),
        // view shorten url
        BlocProvider(
          create: (c) => ViewshorturlBloc(),
        ),
      ],
      // create: (context) => SubjectBloc(),
      child: ThemeProvider(
        initTheme: initTheme,
        builder: (_, theme) {
          return MaterialApp(
            title: Strings.title,

            debugShowCheckedModeBanner: false,
            theme: theme,
            home: const SplashPage(),
            // home: const HomePage(),
          );
        },
      ),
    );
  }
}
