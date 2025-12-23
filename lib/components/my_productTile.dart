// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_ecommerce/models/products.dart';
import 'package:minimal_ecommerce/models/shop.dart';
import 'package:provider/provider.dart';

class MyProducttile extends StatelessWidget {
  final Products product; //product to display

  void addTocart(BuildContext context) {
    //function to add product to cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('${product.name} add to cart?'),
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
              context.read<Shop>().addToCart(product);
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }

  const MyProducttile({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      margin: const EdgeInsets.all(10),
      width: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //prodict images
          Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.favorite),
                ),
              ),

              SizedBox(height: 15),

              //product name
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  product.name,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Theme.of(context).textTheme.labelMedium?.color,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              //product description
              Text(
                product.description,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Theme.of(context).textTheme.labelMedium?.color,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Theme.of(context).textTheme.labelMedium?.color,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              //button
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () => addTocart(context),
                  child: Text(
                    'Add to Cart',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Theme.of(context).textTheme.labelMedium?.color,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          //product price
        ],
      ),
    );
  }
}
