import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:url_shorten/core/app_core.dart';
import 'pages/home/bloc/home_bloc.dart';
import 'pages/splash/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isPlatformDark =
        WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
    final initTheme = isPlatformDark
        ? FlexThemeData.dark(
            scheme: FlexScheme.indigoM3,
            useMaterial3: true,
          )
        : FlexThemeData.light(
            scheme: FlexScheme.indigoM3,
            useMaterial3: true,
          );
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
        ),
      ],
      // create: (context) => SubjectBloc(),
      child: ThemeProvider(
          initTheme: initTheme,
          builder: (_, theme) {
            return MaterialApp(
              title: Strings.title,
              // theme: ThemeData(
              //   colorScheme: ColorScheme.fromSeed(seedColor: Strings.primaryColor),
              //   useMaterial3: true,
              // ),
              debugShowCheckedModeBanner: false,
              theme: theme,
              // darkTheme: FlexThemeData.light(
              //   scheme: FlexScheme.indigoM3,
              //   useMaterial3: true,
              // ),
              // themeMode: ThemeMode.system,
              home: const SplashPage(),
              // home: const HomePage(),
            );
          }),
    );
  }
}
