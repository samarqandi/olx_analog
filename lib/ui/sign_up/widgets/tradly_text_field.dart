import 'package:flutter/material.dart';

class TradlyTextFieldWidget extends StatelessWidget {
  final String labelText;

  const TradlyTextFieldWidget({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
