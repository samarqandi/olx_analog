import 'package:flutter/material.dart';

class NewProductsWidget extends StatelessWidget {
  const NewProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      margin: const EdgeInsets.only(left: 16, top: 12, bottom: 12),
      height: 200,
      width: 150,
      child: ListView.separated(
        primary: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
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
              Text('Coca-Cola'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.paid),
                  Text('Tradly', textAlign: TextAlign.start),
                  Text('\$25', textAlign: TextAlign.end),
                ],
              ),
            ],
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
