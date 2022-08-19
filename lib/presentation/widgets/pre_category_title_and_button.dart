import 'package:flutter/material.dart';

class PreCategoryTitleAndButton extends Row {
  final String title;
  final VoidCallback onButtonPressed;
  final String buttonLabelText;

  PreCategoryTitleAndButton({
    Key? key,
    required this.title,
    required this.onButtonPressed,
    required this.buttonLabelText,
  }) : super(key: key);

  @override
  MainAxisAlignment get mainAxisAlignment => MainAxisAlignment.spaceBetween;

  @override
  List<Widget> get children => [
        Text(title),
        ElevatedButton(
          onPressed: onButtonPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
          child: Text(buttonLabelText),
        ),
      ];
}
