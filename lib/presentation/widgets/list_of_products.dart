import 'package:flutter/material.dart';

class ListOfProductsWidget extends StatelessWidget {
  const ListOfProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      margin: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
      height: 200,
      width: 150,
      child: ListView.separated(
        primary: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18)),
                  ),
                  width: 150,
                  height: 150,
                  constraints: const BoxConstraints(
                    maxHeight: 150,
                    maxWidth: 150,
                  ),
                ),
                const Text('Coca-Cola'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.paid),
                    Text('Tradly', textAlign: TextAlign.start),
                    Text('\$25', textAlign: TextAlign.end),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: 15,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
      ),
    );
  }
}
