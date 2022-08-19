import 'package:flutter/material.dart';

class StoresToFollowList extends StatelessWidget {
  const StoresToFollowList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      constraints: const BoxConstraints(
        minHeight: 160,
        minWidth: 120,
      ),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(12)),
      child: ListView.separated(
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(12),
            ),
            constraints: const BoxConstraints(
              minWidth: 160,
              minHeight: 200,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  maxRadius: 32,
                  minRadius: 32,
                  backgroundColor: Colors.blue,
                  child: Text('A'),
                ),
                const Text('Tradly Store'),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  child: const Text('Follow'),
                ),
              ],
            ),
          );
        },
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 2);
        },
      ),
    );
  }
}
