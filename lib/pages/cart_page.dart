import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_ecommerce/components/button.dart';
import 'package:minimal_ecommerce/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  //remove item from cart
  void removeitem(BuildContext context, product) {
    //implement remove item functionality
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Remove ${product.name} from cart?'),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),

          MaterialButton(
            onPressed: () {
              //add to cart logic here
              Navigator.pop(context);

              //add to cart
              context.read<Shop>().removeFromCart(product);
            },
            child: Text('Remove'),
          ),
        ],
      ),
    );
  }

  void paybuttonpressend(BuildContext context) {
    //implement payment functionality
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Proceed to payment?'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().getuserCart;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cart',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Theme.of(context).textTheme.labelMedium?.color,
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Center(
        child: Column(
          children: [
            //cartlist
            Expanded(child: cart.isEmpty? Text("Your cart is empty") : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index){
                final item = cart[index];
                return ListTile(
                  title: Text(item.name,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Theme.of(context).textTheme.labelMedium?.color,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  subtitle: Text('\$${item.price.toStringAsFixed(2)}',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Theme.of(context).textTheme.labelMedium?.color,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () => removeitem(context, item),
                )
                );
              }
            )
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Button(
              onTap: () => paybuttonpressend(context), 
              child: Text("Pay Now")),
          )
        
        ],
        ),
      )
    );
  }
}