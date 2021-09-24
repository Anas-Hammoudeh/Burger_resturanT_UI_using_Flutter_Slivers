import 'package:flutter/material.dart';

class Hambs extends StatefulWidget {
  @override
  _HambsState createState() => _HambsState();
}

class _HambsState extends State<Hambs> {
  @override
  Widget img = Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15)
    ),
    height: 100,
    child: Image(
     image: AssetImage('images/burg.png'),
    ),
  );
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 200,
        height: 240,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(15)),
                    width: 200,
                    height: 240,
                    child: InkWell(
                      onTap: () {},
                      child: Card(
                          color: Colors.white10,
                          child: Column(
                            children: [
                              Text(
                                'Burger',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    '15.5\$ ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Spacer(),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              )
                            ],
                          ),
                        elevation: 3,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: img,
                  )
                ],
              );
            }),
      ),
    );
  }
}
