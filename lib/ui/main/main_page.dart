import 'package:flutter/material.dart';
import 'package:olx_analog/ui/main/category_list_widget.dart';
import 'package:olx_analog/ui/main/new_products_widget.dart';
import 'package:olx_analog/ui/main/popular_products_widget.dart';
import 'package:olx_analog/ui/main/recommends_list_widget.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet), label: 'Order History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(delegate: _SliverAppBarDelegate()),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const RecommendsListWidget(),
                const CategoryListWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Product',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('See All'),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const NewProductsWidget(),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Product',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      child: const Text('See All'),
                    ),
                  ],
                ),
                const PopularProductsWidget(),
                Container(
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Store to follow'),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                ),
                              ),
                            ),
                            child: const Text('See All'),
                          ),
                          Container(
                            height: 160,
                            width: 120,
                            constraints: const BoxConstraints(
                              minHeight: 160,
                              minWidth: 120,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12)),
                            child: ListView.separated(
                              primary: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      radius: 32,
                                      child: Text('A'),
                                    ),
                                    Text('Tradly Store'),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                          const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                        ),
                                      ),
                                      child: const Text('Follow'),
                                    ),
                                  ],
                                );
                              },
                              itemCount: 15,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(width: 10);
                              },
                            ),
                            // child: Column(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: [
                            //     CircleAvatar(
                            //       backgroundColor: Colors.blue,
                            //       radius: 32,
                            //       child: Text('A'),
                            //     ),
                            //     Text('Tradly Store'),
                            //     ElevatedButton(
                            //       onPressed: () {},
                            //       style: ButtonStyle(
                            //         shape: MaterialStateProperty.all(
                            //           const RoundedRectangleBorder(
                            //             borderRadius:
                            //                 BorderRadius.all(Radius.circular(12)),
                            //           ),
                            //         ),
                            //       ),
                            //       child: const Text('Follow'),
                            //     ),
                            //   ],
                            // ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.blueGrey,
                  height: 100,
                ),
                Container(
                  color: Colors.brown,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                ),
                Container(
                  color: Colors.black,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  height: 100,
                ),
                Container(
                  color: Colors.indigo,
                  height: 100,
                ),
                Container(
                  color: Colors.white,
                  height: 100,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.blueGrey,
                  height: 100,
                ),
                Container(
                  color: Colors.brown,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
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
              Expanded(child: SizedBox()),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.book, color: Colors.white)),
            ],
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Seach Product',
              prefixIcon: Icon(Icons.search),
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
