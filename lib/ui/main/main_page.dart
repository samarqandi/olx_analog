import 'package:flutter/material.dart';
import 'package:olx_analog/ui/main/category_list_widget.dart';
import 'package:olx_analog/ui/main/new_products_widget.dart';
import 'package:olx_analog/ui/main/popular_products_widget.dart';
import 'package:olx_analog/ui/main/recommends_list_widget.dart';

import 'widgets/bottom_nav_bar.dart';
import 'widgets/pre_category_title_and_button.dart';
import 'widgets/sliver_app_bar_delegate.dart';
import 'widgets/stores_to_follow_list.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Groceries'),
      //   actions: [
      //     Icon(Icons.favorite),
      //     Icon(Icons.book),
      //   ],
      // ),
      bottomNavigationBar: const BottomNavBarWidget(),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(delegate: SliverAppBarDelegate()),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const RecommendsListWidget(),
                const CategoryListWidget(),
                const PreCategoryTitleAndButton(
                  categoryName: 'New Products',
                  buttonLabelText: 'See All',
                  standardStyle: false,
                ),
                const NewProductsList(),
                const Divider(),
                const PreCategoryTitleAndButton(
                  categoryName: 'Popular Products',
                  buttonLabelText: 'See All',
                  standardStyle: false,
                ),
                const PopularProductsList(),
                Container(
                  color: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Column(
                    children: const [
                      PreCategoryTitleAndButton(
                          categoryName: 'Store\'s to follow',
                          buttonLabelText: 'See All',
                          standardStyle: true),
                      StoresToFollowList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
