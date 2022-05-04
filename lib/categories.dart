// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentselected = 0;
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        width: double.maxFinite,
        height: 100,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) => Stack(
            children: [             Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    margin: EdgeInsets.only(
                      left: index == 0 ? 20 : 0,
                      right: 20,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentselected = index;
                        });
                      },
                      child: Card(
                        color: index == currentselected
                            ? Colors.black.withOpacity(0.7)
                            : Colors.white,
                        child: Icon(
                          Icons.fastfood,
                          color: index == currentselected
                              ? Colors.white
                              : Colors.black.withOpacity(0.7),
                        ),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 20 : 0,
                    right: 20,
                  ),
                  width: 90,
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Burger',
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
