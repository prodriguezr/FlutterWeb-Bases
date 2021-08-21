import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bases/ui/shared/shared.dart';
import 'package:bases/providers/providers.dart';

class CounterProviderView extends StatelessWidget {
  final String base;

  const CounterProviderView({Key? key, required this.base}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(base: base),
        child: _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'Counter with Provider',
              style: TextStyle(fontSize: 20),
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  'Counter: ${counterProvider.counter}',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFlatButton(
                    color: Colors.red,
                    text: 'Increment',
                    onPressed: () => counterProvider.increment()),
                CustomFlatButton(
                  color: Colors.blue,
                  text: 'Decrement',
                  onPressed: () => counterProvider.decrement(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
