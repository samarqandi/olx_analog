import 'package:flutter/material.dart';

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
                Container(
                  margin: EdgeInsets.only(left: 16, top: 12, bottom: 12),
                  height: 150,
                  width: 250,
                  child: ListView.separated(
                    primary: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        width: 290,
                        height: 20,
                        constraints: const BoxConstraints(
                          maxHeight: 20,
                          maxWidth: 250,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('test'),
                              SizedBox(height: 10),
                              OutlinedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(120, 36)),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'press',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 15,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10);
                    },
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
