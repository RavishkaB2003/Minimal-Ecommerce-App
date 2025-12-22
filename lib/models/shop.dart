import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/models/products.dart';

class Shop extends ChangeNotifier {
  //products to sale
  final List<Products> _productInShop = [
    Products(
      id: 'P1',
      name: 'The Apothecary Amber Skincare Collection',
      description: 'A comprehensive collection of amber glass apothecary bottles and jars arranged on minimalist white pedestals. This set is perfect for a cohesive, eco-friendly skincare or essential oil routine.',
      price: 38.00,
      imageUrl:
          'lib/assets/products/product01.jpg',
    ),
    Products(
      id: 'P2',
      name: 'Venus Rosewater Gentle Foaming Cleanser',
      description: 'A gentle, foaming pink facial cleanser by "Venus" that creates a soft, airy lather. It effectively removes impurities while leaving the skin feeling refreshed and balanced.',
      price: 24.00,
      imageUrl:
          'lib/assets/products/product02.jpg',
    ),
    Products(
      id: 'P3',
      name: 'Venus Green Tea Purifying Foaming Cleanser',
      description: 'A refreshing, lime-tinted foaming cleanser designed to purify and brighten the complexion. Its lightweight formula provides a deep clean that invigorates the skin.',
      price: 24.00,
      imageUrl:
          'lib/assets/products/product03.jpg',
    ),

    Products(
      id: 'P4',
      name: 'Venus High-Definition Extension Mascara',
      description: ' A sleek "Venus" extension mascara featuring a precision wand for dramatic length and volume. The long-wear formula is designed to define every lash without clumping.',
      price: 19.00,
      imageUrl:
          'lib/assets/products/product04.jpg',
    ),

    Products(
      id: 'P5',
      name: 'Heritage Amber Glass Pump Duo',
      description: 'Two large amber glass pump bottles resting on a classic black and white tiled surface. Ideal for hand soap or lotion, they add a clean, vintage aesthetic to any bathroom or kitchen.',
      price: 32.00,
      imageUrl:
          'lib/assets/products/product05.jpg',
    ),

    Products(
      id: 'P6',
      name: 'Midnight Velvet Essentials Beauty Kit',
      description: 'An assortment of essential beauty products, including brushes, lipsticks, and powders, spilling from a stylish makeup bag. This collection provides all the tools needed for a complete daily beauty routine.',
      price: 85.00,
      imageUrl:
          'lib/assets/products/product06.jpg',
    ),

    Products(
      id: 'P7',
      name: 'Velvet Rose Gold Matte Lipstick',
      description: 'A rich, berry-toned matte lipstick housed in a luxurious rose gold tube. This high-pigment formula provides a bold, sophisticated pop of color with a smooth finish.',
      price: 22.00,
      imageUrl:
          'lib/assets/products/product07.jpg',
    ),

    Products(
      id: 'P8',
      name: 'Crystal Prism Eau de Parfum (Set of 3)',
      description: 'A trio of elegant, faceted glass perfume bottles containing different tinted fragrances. These scents offer a sophisticated variety of floral and fresh notes for any occasion.',
      price: 75.00,
      imageUrl:
          'lib/assets/products/product08.jpg',
    ),

    Products(
      id: 'P9',
      name: 'Luminous High-Shine Lip Gloss Palette',
      description: 'A top-down view of several vibrant lip glosses arranged in a circular pattern. These shades range from soft corals to deep pinks, offering a high-shine finish for a polished look.',
      price: 42.00,
      imageUrl:
          'lib/assets/products/product09.jpg',
    ),

    Products(
      id: 'P10',
      name: 'Botanical Infusion Glow Serum',
      description: 'A nourishing facial oil infused with botanicals, shown being applied with a glass dropper. It is designed to deeply hydrate and revitalize the skin with natural extracts.',
      price: 38.00,
      imageUrl:
          'lib/assets/products/product10.jpg',
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
    notifyListeners();
  }
  //remove from cart
  void removeFromCart(Products item){
    _userCart.remove(item);
    notifyListeners();
  }
}
