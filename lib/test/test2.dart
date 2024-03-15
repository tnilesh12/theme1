import 'package:flutter/material.dart';
import 'package:theme1/views/product_details_screen/widgets/widget_image.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Wish List',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                'Edit',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
        body: WishListBody());
  }
}

class WishListBody extends StatelessWidget {
  const WishListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(children: [
        Container(
          color: Colors.amber,
          child: DefaultTabController(
            length: 2,
            child: TabBar(
                // dividerHeight: 20,
                tabAlignment: TabAlignment.center,
                isScrollable: true,
                tabs: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    child: Tab(child: Text('All Items')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    child: Tab(child: Text('Board')),
                  ),
                ]),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('20 Items found'), Icon(Icons.menu_open_rounded)],
              ),
            ),
          ],
        ),
        // SizedBox(height: 10,),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              height: 1,
            ),
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: Card(
                    elevation: 0,
                    //  margin: EdgeInsets.all(10),
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: WidgetImage('https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                //  Image.network(
                                //   'https://plus.unsplash.com/premium_photo-1671247953201-2fdc17af6692?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                //   width: 90,
                                // )
                                ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Winter Warm Sweater',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '3400',
                                  style: TextStyle(
                                      fontSize: 10, fontWeight: FontWeight.w300),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Size: M ' + "  ",
                                      style: TextStyle(
                                        fontSize: 8,
                                      ),
                                    ),
                                    Text(
                                      '|' + " ",
                                      style: TextStyle(fontSize: 8),
                                    ),
                                    Text(
                                      'Color: Grey',
                                      style: TextStyle(fontSize: 8),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                          color: Colors.blue, width: 1),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Move to Bag',
                                      style: TextStyle(color: Colors.blue),
                                    ))
                              ],
                            ),
                          )
                        ])),
              );
            },
          ),
        )
      ]),
    );
  }
}
