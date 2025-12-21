import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/components/my_ListTile.dart';

class AppDrawer extends StatelessWidget {
  final void Function()? onTap;
  const AppDrawer({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
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
                  onPressed: onTap,
                  icon: Icon(
                    Icons.light_mode,
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
                  onTap: () => Navigator.pushNamed(context, '/shop'),
                ),
                SizedBox(height: 10),
                //cart tile
                MyListTile(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                  onTap: () => Navigator.pushNamed(context, '/cart'),
                ),
                SizedBox(height: 10),
                  //exit tile
                
                
              ],
            
            ),
          ),
        MyListTile(
                  text: 'Exit',
                  icon: Icons.exit_to_app,
                  onTap: () => Navigator.pushNamed(context, '/intro')
                ),
        ],
      ),
    );
  }
}
