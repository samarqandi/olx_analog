import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Wishlist'),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 150,
            maxHeight: 200,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.5),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/icon/icon.png'),
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(18),
                  ),
                ),
                constraints:
                    const BoxConstraints(maxHeight: 120, maxWidth: 150),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Apple'),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(width: 10),
                  Icon(Icons.paid, color: Colors.green),
                  SizedBox(width: 2),
                  Text('Tradly', textAlign: TextAlign.start),
                  SizedBox(width: 25),
                  Text('\$25', textAlign: TextAlign.end),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
