import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:url_shorten/core/app_core.dart';
import 'package:url_shorten/core/params/home_page_params.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/favorite_bloc.dart';
import 'package:url_shorten/presentation/pages/history/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/home/bloc/home_bloc.dart';
import 'package:url_shorten/presentation/pages/settings/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/splash/splash.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/viewshorturl_bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/bloc/viewshorturlpr_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isPlatformDark =
        WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
    final ThemeData initTheme =
        isPlatformDark ? HomePageParams.darkTheme : HomePageParams.lightTheme;
    return MultiBlocProvider(
      // ignore: always_specify_types
      providers: [
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => HomeBloc(),
        ),
        // favorite
        BlocProvider<FavoriteBloc>(
          create: (BuildContext context) => FavoriteBloc(),
        ),
        // history
        BlocProvider<HistoryBloc>(
          create: (BuildContext context) => HistoryBloc(),
        ),
        // settings
        BlocProvider<SettingsBloc>(
          create: (BuildContext context) => SettingsBloc(),
        ),
        // view shorten url
        BlocProvider<ViewshorturlBloc>(
          create: (BuildContext c) => ViewshorturlBloc(),
        ),

        /// view premium shorten url
        BlocProvider<ViewshorturlprBloc>(
          create: (BuildContext c) => ViewshorturlprBloc(),
        )
      ],
      // create: (context) => SubjectBloc(),
      child: ThemeProvider(
        initTheme: initTheme,
        // duration: 1.seconds,
        builder: (_, ThemeData theme) => MaterialApp(
          title: Strings.title,
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const SplashPage(),
          // home: const HomePage(),
        ),
      ),
    );
  }
}
