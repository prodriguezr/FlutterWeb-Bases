import 'package:bases/locator.dart';
import 'package:bases/services/services.dart';
import 'package:flutter/material.dart';

import 'package:bases/ui/layout/layout.dart';
import 'router/router.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas App',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().key,
      builder: (_, child) {
        return MainLayout(child: child ?? Container());
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
