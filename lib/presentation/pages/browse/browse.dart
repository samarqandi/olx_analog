import 'package:flutter/material.dart';

class Browse extends StatelessWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            constraints:
                const BoxConstraints(maxHeight: 150, maxWidth: double.infinity),
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 150),
                      child: Text('Browse'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_business_sharp),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    constraints:
                        const BoxConstraints(maxHeight: 40, maxWidth: 300),
                  ),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    _ChipButtonWidget(),
                    _ChipButtonWidget(),
                    _ChipButtonWidget(),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              _CardP(),
              _CardP(),
            ],
          ),
        ],
      ),
    );
  }
}

class _ChipButtonWidget extends StatelessWidget {
  const _ChipButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        visualDensity: VisualDensity.comfortable,
        minimumSize: MaterialStateProperty.all(Size(100, 35)),
        maximumSize: MaterialStateProperty.all(Size(100, 100)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Colors.white),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(
            Icons.more,
            color: Colors.white,
          ),
          Text(
            'Sort by',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _CardP extends StatelessWidget {
  const _CardP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
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
  }
}
