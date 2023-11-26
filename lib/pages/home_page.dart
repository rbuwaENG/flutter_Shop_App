import 'package:flutter/material.dart';
import 'package:shop/components/bottom_nav_bar.dart';
import 'package:shop/pages/shop_page.dart';

import 'cart_page.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _index = 0;

  void nagateBottombar(int index) {
    setState(() {
      _index = index;
    });
  }

  final List<Widget> _pages = [
    const shopPage(),
    const cartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
              color: Colors.black);
        }),
      ),
      bottomNavigationBar: bottomNav(
        onTabChange: (index) => nagateBottombar(index),
      ),
      drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Image.asset(
                      'lib/images/nike.png',
                      color: Colors.white,
                    ),
                  ),

                  //white line
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.grey[800],
                    ),
                  ),
                  //list tile
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        'HOME',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        'ABOUT',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'LOGOUT',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )),
      body: _pages[_index],
    );
  }
}
