import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Strawberry Pavlova'),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(),
                  Container(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                            ),
                          ],
                        ),
                        Container(
                          child: Text('170 Reviews'),
                        )
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Image(
                image: AssetImage('image/food.png'),
                fit: BoxFit.contain,
              ),
            ),
          ],
        ));
  }
}
