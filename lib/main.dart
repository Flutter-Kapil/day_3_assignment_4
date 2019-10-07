import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        appBar: AppBar(
//          title: Text('Strawberry Pavlova'),
//        ),
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 4.0),
                  padding: EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 5.0),
//                decoration: BoxDecoration(
//                  color: Colors.blue.shade100,
//                  border: Border.all(
//                    color: Colors.black,
//                  ),
//                ),
                  child: Center(
                    child: Text(
                      "Strawberry pavlova",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
//                decoration: BoxDecoration(
//                  color: Colors.blue.shade100,
//                  border: Border.all(
//                    color: Colors.black,
//                  ),
//                ),
//                    width: 200.0,
                  margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
//                    padding,: EdgeInsets.symmetric(vertical: 1.0),
                  child: Center(
                    child: Text(
                      "pavlova is a meringue-based"
                      " dessert names after the Russian"
                      " ballerine Arina Pavlova."
                      "Pavlova features a crisp crust and "
                      "soft, light inside, topped with fruit"
                      "and whipped cream. ",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
//                decoration: BoxDecoration(
//                  color: Colors.blue.shade100,
//                  border: Border.all(
//                    color: Colors.black,
//                  ),
//                ),
                  child: Wrap(
                    runSpacing: 7,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.grey.shade600,
                          ),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.grey.shade600,
                          ),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.grey.shade600,
                          ),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.grey.shade600,
                          ),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.grey.shade600,
                          ),
                        ],
                      ),
                      Container(
                        child: Text('170 Reviews'),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
//                decoration: BoxDecoration(
//                  color: Colors.blue.shade100,
//                  border: Border.all(
//                    color: Colors.black,
//                  ),
//                ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.thumb_up,
                            color: Colors.green,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('PREP'),
                          SizedBox(
                            height: 5,
                          ),
                          Text('25 Min'),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.timer, color: Colors.green),
                          SizedBox(
                            height: 5,
                          ),
                          Text('COOK'),
                          SizedBox(
                            height: 5,
                          ),
                          Text('1 Hr'),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.fastfood, color: Colors.green),
                          SizedBox(
                            height: 5,
                          ),
                          Text('FEEDS'),
                          SizedBox(
                            height: 5,
                          ),
                          Text('4-6'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
              child:
                  Image(image: AssetImage('image/food.png'), fit: BoxFit.fill)),
        ),
      ],
    ));
  }
}
