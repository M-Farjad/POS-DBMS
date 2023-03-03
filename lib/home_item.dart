import 'package:flutter/material.dart';

Widget hehe = Expanded(
    child: GridView.count(
  crossAxisCount: 4,
  childAspectRatio: (1 / 1.2),
  children: [
    _item(
      image: 'items/1.png',
      title: 'Original Burger',
      price: '\$5.99',
      item: '11 item',
    ),
    _item(
      image: 'items/2.png',
      title: 'Double Burger',
      price: '\$10.99',
      item: '10 item',
    ),
    _item(
      image: 'items/3.png',
      title: 'Cheese Burger',
      price: '\$6.99',
      item: '7 item',
    ),
    _item(
      image: 'items/4.png',
      title: 'Double Cheese Burger',
      price: '\$12.99',
      item: '20 item',
    ),
    _item(
      image: 'items/5.png',
      title: 'Spicy Burger',
      price: '\$7.39',
      item: '12 item',
    ),
    _item(
      image: 'items/6.png',
      title: 'Special Black Burger',
      price: '\$7.39',
      item: '39 item',
    ),
    _item(
      image: 'items/7.png',
      title: 'Special Cheese Burger',
      price: '\$8.00',
      item: '2 item',
    ),
    _item(
      image: 'items/8.png',
      title: 'Jumbo Cheese Burger',
      price: '\$15.99',
      item: '2 item',
    ),
    _item(
      image: 'items/9.png',
      title: 'Spicy Burger',
      price: '\$7.39',
      item: '12 item',
    ),
    _item(
      image: 'items/10.png',
      title: 'Special Black Burger',
      price: '\$7.39',
      item: '39 item',
    ),
    _item(
      image: 'items/11.png',
      title: 'Special Cheese Burger',
      price: '\$8.00',
      item: '2 item',
    ),
    _item(
      image: 'items/12.png',
      title: 'Jumbo Cheese Burger',
      price: '\$15.99',
      item: '2 item',
    ),
  ],
));

_item(
    {required String image,
    required String title,
    required String price,
    required String item}) {}
