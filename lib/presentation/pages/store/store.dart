import 'package:flutter/material.dart';

class StoreWidget extends StatelessWidget {
  const StoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAuth = false;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Title'),
        actions: const [
          Icon(Icons.favorite),
          Icon(Icons.add_business_sharp),
        ],
      ),
      body: isAuth ? const Test() : const Test1(),
    );
  }
}

class Test1 extends StatelessWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool storeIsEmpty = true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(child: Text('A')),
        const Text('Tradly Store'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Edit Store')),
            ElevatedButton(onPressed: () {}, child: const Text('View Store')),
          ],
        ),
        const Text('Remove Store'),
        const Divider(),
        storeIsEmpty ? const StoreEmptyWidget() : StoreIsNotEmptyWidget(),
      ],
    );
  }
}

class StoreIsNotEmptyWidget extends StatelessWidget {
  const StoreIsNotEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextField(),
        Text('Products'),
        _CardP(),
      ],
    );
  }
}

class StoreEmptyWidget extends StatelessWidget {
  const StoreEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('You dont have product'),
        ElevatedButton(onPressed: () {}, child: Text('Add Product')),
      ],
    );
  }
}

class Test extends Center {
  const Test({Key? key}) : super(key: key);

  @override
  Widget? get child => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('You Dont Have a Store'),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Create Store',
            ),
          ),
        ],
      );
}

class _CardP extends StatelessWidget {
  const _CardP({Key? key}) : super(key: key);

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
          const Text('Fish'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.paid),
              Text('Tradly', textAlign: TextAlign.start),
              Text('\$15', textAlign: TextAlign.end),
            ],
          ),
        ],
      ),
    );
  }
}
