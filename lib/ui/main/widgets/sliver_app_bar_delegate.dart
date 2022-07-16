import 'package:flutter/material.dart';
import 'package:olx_analog/ui/navigation/app_routes.dart';

import 'search_product.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight = 90;
  final double maxHeight = 100;

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
                      Navigator.of(context).pushNamed(AppRoutes.wishList),
                  icon: const Icon(Icons.favorite, color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.book, color: Colors.white)),
            ],
          ),
          const SearchProductWidget(),
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
