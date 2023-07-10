import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

// make the above class a function
Route fadeThroughTransitionPageWrapper(Widget nxtPage) {
  return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeThroughTransition(
            fillColor: Theme.of(context).scaffoldBackgroundColor,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
      pageBuilder: (context, animation, secondaryAnimation) {
        return nxtPage;
      });
}
