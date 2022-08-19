import 'package:flutter/material.dart';
import 'package:test/presentation/navigation/navigation.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight = 100;
  final double maxHeight = 150;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return ColoredBox(
      color: Colors.greenAccent,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Groceries',
                style: Theme.of(context).textTheme.headline5,
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(RouteTo.wishlist),
                  icon: const Icon(Icons.favorite, color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_business_sharp,
                      color: Colors.white)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                fillColor: Colors.white,
                filled: true,
                constraints: const BoxConstraints(maxHeight: 40, maxWidth: 300),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
