// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate([
        Stack(children: [
          Column(
            children: [
              Container(
                height: size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(35)),
                  boxShadow: [BoxShadow(offset: Offset(0, 0), blurRadius: 2)],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white70,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/burg.png'),
                              radius: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Text(
                              'Yummy',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'get it right now',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.lightBlue,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '144 \$ DOLLARS',
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: 17),
              height: 50,
              width: size.width - 15,
              child: Center(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Search our dilicuios meals',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 20,
                      ),
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.black38,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ])
      ]),
    );
  }
}
