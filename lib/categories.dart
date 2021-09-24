import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  int currentSelectedItem = 0;

  Widget build(BuildContext context) {
    int items = 10;

    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              currentSelectedItem = index;
                            });
                          },
                          child: Card(
                            color: currentSelectedItem == index
                                ? Colors.black
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.fastfood,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                 
                ],
              );
            }),
      ),
    );
  }
}
