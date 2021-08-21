import 'package:bases/locator.dart';
import 'package:bases/services/services.dart';
import 'package:bases/ui/shared/shared.dart';
import 'package:flutter/material.dart';

class NotFoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Text(
            '404',
            style: TextStyle(
              fontSize: 80,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Go Back',
                onPressed: () => locator<NavigationService>().goBack(),
                color: Colors.blue,
              ),
              CustomFlatButton(
                text: 'Go Home',
                onPressed: () => locator<NavigationService>().navigateTo('/'),
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
