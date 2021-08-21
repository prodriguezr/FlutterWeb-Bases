import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Function() onPressed;

  const CustomFlatButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: this.color,
      ),
      onPressed: () => this.onPressed(),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(this.text),
      ),
    );
  }
}
