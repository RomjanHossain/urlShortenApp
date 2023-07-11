import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

/// page animatin class
class PageAnimationWrapper {
// fade through transition page wrapper
  static Route fadeThroughTransitionPageWrapper(Widget nxtPage) {
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
      },
    );
  }

// shared axis transition page wrapper
  static Route sharedAxisTransitionPageWrapper(Widget nxtPage) {
    return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SharedAxisTransition(
          fillColor: Theme.of(context).cardColor,
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          transitionType: SharedAxisTransitionType.scaled,
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return nxtPage;
      },
    );
  }
}
