// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    height: size.height / 5,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(45),
                      ),
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 0), blurRadius: 2),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/doggie.jpg"),
                                radius: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Wanted Jack',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black54,
                                  ),
                                  child: const Text(
                                    'Golden',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              '154 \$ CAN',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Positioned(
                right:1.0,
                left: 1.0,
                bottom: 1.0,
                child: Container(
                  height: 50,
                  width: size.width,
                  child: Card(
                    color: Colors.white,
                    elevation: 3,
                    margin: EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "What does your belly want to eat? ",
                        suffixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.only(left: 2)
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
