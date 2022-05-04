import 'package:flutter/material.dart';

class BurgerPage extends StatefulWidget {
  static const tag = 'burger_page';
  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.brown[700],
        child: Center(
          child: Text(
            'Thanks for choosing this food',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
        ),
      ),
    );
  }
}
