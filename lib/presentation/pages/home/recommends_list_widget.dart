import 'package:flutter/material.dart';

class RecommendsListWidget extends StatelessWidget {
  const RecommendsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, top: 12, bottom: 12),
      height: 150,
      width: 250,
      child: ListView.separated(
        primary: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            width: 290,
            height: 20,
            constraints: const BoxConstraints(
              maxHeight: 20,
              maxWidth: 250,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('test'),
                  const SizedBox(height: 10),
                  OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 36)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'press',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 2,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
      ),
    );
  }
}
