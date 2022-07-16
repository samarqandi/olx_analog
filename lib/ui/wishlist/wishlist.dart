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
            maxHeight: 230,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.5),
            color: Colors.white,
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
                    const BoxConstraints(maxHeight: 150, maxWidth: 150),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Apple'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.paid, color: Colors.green),
                    SizedBox(width: 10),
                    Text('Tradly', textAlign: TextAlign.start),
                    SizedBox(width: 25),
                    Text('\$25', textAlign: TextAlign.end),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
