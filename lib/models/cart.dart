import 'package:flutter/material.dart';
import 'package:shop_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Terra Humara',
      price: '12,795.00',
      description:
          'In 97, the Air Terra Humara was born for bold, brave wanderers.',
      imagePath: 'lib/image/Air 1.jpg',
    ),
    Shoe(
      name: 'Nike Air Max 1',
      price: '12,795.00',
      description:
          'Walking on clouds above the noise, the Air Max 1 blends timeless design with cushioned comfort.',
      imagePath: 'lib/image/Air 4.png',
    ),
    Shoe(
      name: 'Air Jordan 9',
      price: '19,295.00',
      description:
          'Digging deep into the archives, we kept all the iconic details.',
      imagePath: 'lib/image/Air 5.jpg',
    ),
    Shoe(
      name: 'Nike Air Uptempo 96',
      price: '16,995.00',
      description:
          ' With a design inspired by high-flying basketball style and 90s graffiti art.',
      imagePath: 'lib/image/Air 3.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
