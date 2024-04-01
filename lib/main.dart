import 'package:flutter/material.dart';

import 'cart_dart.dart';
import 'detail_dart.dart';
import 'home_dart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'DetailPage': (context) => const DetailPage(),
        'Cart_page': (context) => const CartPage(),
      },
    ),
  );
}
