import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        actions: const [
          Icon(Icons.favorite),
          Icon(Icons.add_business_sharp),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Text('Transactions'),
              ElevatedButton(
                  onPressed: () {}, child: const Text('January 2020')),
            ],
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.abc),
                Column(
                  children: const [
                    Text('Coca-Cola'),
                    Text('\$ 25'),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Delivered')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
