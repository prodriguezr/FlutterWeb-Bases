import 'package:bases/ui/shared/shared.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  final String base;

  const CounterView({Key? key, required this.base}) : super(key: key);

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;

  @override
  void initState() {
    super.initState();

    if (int.tryParse(widget.base) != null)
      this.counter = int.parse(widget.base);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'Counter with Stateful',
              style: TextStyle(fontSize: 20),
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  'Counter: $counter',
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
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    }),
                CustomFlatButton(
                    color: Colors.blue,
                    text: 'Decrement',
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    }),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
