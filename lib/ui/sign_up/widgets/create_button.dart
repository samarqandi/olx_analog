import 'package:flutter/material.dart';

class CreateButtonWidget extends StatelessWidget {
  const CreateButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 50,
        minWidth: 300,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
        color: Colors.white,
      ),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          maximumSize: MaterialStateProperty.all(const Size(200, 60)),
        ),
        child: const Text(
          'Create',
          style: TextStyle(color: Colors.greenAccent),
        ),
      ),
    );
  }
}
