import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            width: 90,
            height: 90,
            constraints: const BoxConstraints(
              maxHeight: 90,
              maxWidth: 90,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('test $index'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
