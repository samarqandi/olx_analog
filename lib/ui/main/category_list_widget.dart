import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 200,
      width: 200,
      child: ListView.separated(
        primary: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
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
                    children: const [
                      Text('test'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Container(
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
                    children: const [
                      Text('test'),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: 15,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 2);
        },
      ),
    );
  }
}
