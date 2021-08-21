import 'package:bases/ui/views/views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouterGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
      case '/stateful':
        return _fadeRoute(
            child: CounterView(base: '4'), routeName: settings.name);
      case '/provider':
        return _fadeRoute(
            child: CounterProviderView(base: '5'), routeName: settings.name);
      default:
        return _fadeRoute(child: NotFoundView(), routeName: '/404');
    }
  }

  static PageRoute _fadeRoute(
      {required Widget child, required String? routeName}) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
          ? FadeTransition(opacity: animation, child: child)
          : CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: __,
              child: child,
              linearTransition: true),
    );
  }
}
