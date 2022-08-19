import 'package:flutter/material.dart';
import './category_list_widget.dart';
import '../../widgets/list_of_products.dart';
import './recommends_list_widget.dart';
import '../../widgets/pre_category_title_and_button.dart';
import 'widgets/sliver_app_bar_delegate.dart';
import 'widgets/stores_to_follow_list.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverPersistentHeader(delegate: SliverAppBarDelegate()),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const RecommendsListWidget(),
              const CategoryListWidget(),
              PreCategoryTitleAndButton(
                title: 'New Products',
                buttonLabelText: 'See All',
                onButtonPressed: () {},
              ),
              const ListOfProductsWidget(),
              const Divider(),
              PreCategoryTitleAndButton(
                title: 'Popular Products',
                buttonLabelText: 'See All',
                onButtonPressed: () {},
              ),
              const ListOfProductsWidget(),
              Container(
                color: Colors.green,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  children: [
                    PreCategoryTitleAndButton(
                      title: 'Store\'s to follow',
                      buttonLabelText: 'See All',
                      onButtonPressed: () {},
                    ),
                    const StoresToFollowList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
