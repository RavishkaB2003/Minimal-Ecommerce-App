import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/components/my_ListTile.dart';
import 'package:minimal_ecommerce/theme/theme_provider.dart';
import 'package:provider/provider.dart';


class AppDrawer extends StatelessWidget {

  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    bool islightMode = Theme.of(context).brightness == Brightness.light; //to check current mode
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          //lightmode dark mode toggle
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (){
                  Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                },
                icon: Icon(
                  islightMode ? Icons.dark_mode :  Icons.light_mode,
                  color: Theme.of(context).textTheme.labelMedium?.color,
                  size: 50,
                ),
              ),
            ),
          ),
          //ListView()
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 180,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.shopping_bag,
                    size: 80,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                //shop tile
                MyListTile(
                  icon: Icons.shopping_bag,
                  text: 'Shop',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/shop');
                  },
                ),
                SizedBox(height: 10),
                //cart tile
                MyListTile(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/cart');
                  } 
                ),
                SizedBox(height: 10),

                //exit tile
              ],
            ),
          ),
          MyListTile(
            text: 'Exit',
            icon: Icons.logout,
            onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/intro', (route) => false),
          ),
        ],
      ),
    );
  }
}
