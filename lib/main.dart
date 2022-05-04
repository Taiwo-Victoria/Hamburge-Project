// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';
import 'hamburger_list.dart';
import 'burgerPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardColor: Colors.teal,
        appBarTheme: const AppBarTheme(
          color: Colors.teal,
        ),
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
      ),
      home:  Hamberger(),
      routes: {BurgerPage.tag: (_) => BurgerPage()},
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamberger extends StatefulWidget {
  const Hamberger({Key? key}) : super(key: key);

  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: const Text('Deliver Me'),
            pinned: true,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          ),
          Header(),
          Categories(),
          HamburgersList(row: 1),
          HamburgersList(row: 2),
          /*SliverList(
            delegate: SliverChildListDelegate([
              Text(
                'Hamberger',
                style: TextStyle(
                  fontSize: 300,
                ),
              )
            ]),
          ),*/
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_alert),
                  color: Colors.white,
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.turned_in),
                  color: Colors.white,
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
