import 'package:minimal_ecommerce/models/products.dart';

class Shop {
  //products to sale
  final List<Products> _productInShop = [
    Products(
      id: 'p1',
      name: 'Laptop',
      description: 'A high performance laptop',
      price: 999.99,
      imageUrl:
          'lib/assets/products/product1.jpg',
    ),
    Products(
      id: 'p2',
      name: 'Smartphone',
      description: 'A latest model smartphone',
      price: 699.99,
      imageUrl:
          'https://example.com/smartphone.jpg',
    ),
    Products(
      id: 'p3',
      name: 'Headphones',
      description: 'Noise cancelling headphones',
      price: 199.99,
      imageUrl:
          'https://example.com/headphones.jpg',
    ),
  ];
  //get product list
  List<Products> get shop => _productInShop;
  //user cart
  final List<Products> _userCart = [];
  //get user cart
  List<Products> get getUserCart => _userCart;
  //add to cart
  void addToCart(Products item){
    _userCart.add(item);
  }
  //remove from cart
  void removeFromCart(Products item){
    _userCart.remove(item);
  }
}
