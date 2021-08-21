import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    return key.currentState!.pushNamed(routeName);
  }

  void goBack() {
    return key.currentState!.pop();
  }
}
