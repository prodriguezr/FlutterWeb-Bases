import 'package:bases/ui/shared/shared.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppMenu(),
            //Spacer(),
            Expanded(child: this.child),
            //Spacer(),
          ],
        ),
      ),
    );
  }
}
