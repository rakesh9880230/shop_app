import 'package:flutter/material.dart';
import 'package:shop_app/components/bottom_nav_bar.dart';
import 'package:shop_app/pages/cart_pages.dart';
import 'package:shop_app/pages/shop_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selectedIndex
  // when the user taps on any of the bottom nav bar items
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to  display
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTapChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //  logo
                Padding(
                  padding: const EdgeInsets.only(
                      top: 140, left: 70, right: 70, bottom: 60),
                  child: Container(
                    child: Image.asset(
                      'lib/image/Nike Logo  2.png',
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),

                // other pages
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text('Home', style: TextStyle(color: Colors.white)),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 7),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text('About', style: TextStyle(color: Colors.white)),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 25, top: 460),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title:
                        Text('Logout', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
