import 'package:flutter/material.dart';

class PreCategoryTitleAndButton extends StatelessWidget {
  final String categoryName;
  final String buttonLabelText;
  final bool standardStyle;

  const PreCategoryTitleAndButton({
    Key? key,
    required this.categoryName,
    required this.buttonLabelText,
    required this.standardStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          categoryName,
          style: standardStyle
              ? const TextStyle()
              : Theme.of(context).textTheme.headline6,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
          child: Text(buttonLabelText),
        ),
      ],
    );
  }
}
