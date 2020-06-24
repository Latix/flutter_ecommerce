import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: true,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            // Header
            UserAccountsDrawerHeader(
              accountName: Text('Kamsi Kodi'),
              accountEmail: Text('kamsikodi@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            // Body
            Column(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Home Page'),
                    leading: Icon(
                      Icons.home,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('My Order'),
                    leading: Icon(
                      Icons.shopping_basket,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Shopping Cart'),
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Favorites'),
                    leading: Icon(
                      Icons.favorite,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Setting'),
                    leading: Icon(
                      Icons.settings,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('About'),
                    leading: Icon(
                      Icons.help,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
