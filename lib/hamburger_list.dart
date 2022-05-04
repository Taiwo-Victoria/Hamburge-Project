// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'burgerPage.dart';

class HamburgersList extends StatefulWidget {
  final int? row;
  HamburgersList({this.row});
  @override
  State<HamburgersList> createState() => _HamburgersListState();
}

class _HamburgersListState extends State<HamburgersList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget baconImage = Container(
      height: 120,
      child: Image.asset('images/bacon.png'),
    );
    Widget baconImagee = Container(
      height: 100,
      child: Image.asset('images/unnamed.jpg'),
    );
    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: EdgeInsets.only(top: 15),
        child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (context, index) {
              bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
              return Stack(
                children: [
                  Container(
                    height: widget.row == 2 ? 330 : 240,
                    width: 200,
                    margin: EdgeInsets.only(
                        left: 20, right: items == index ? 20 : 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(BurgerPage.tag);
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                reverse ? 'Chicken Burger' : 'Bacon Burger',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    '15.95 \$ CAN',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: reverse ? 75 : 50,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(BurgerPage.tag);
                      },
                      child: reverse ? baconImagee : baconImage,
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
