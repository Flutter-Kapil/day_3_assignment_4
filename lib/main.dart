import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FoodLayout()));
}

class FoodLayout extends StatefulWidget {
  @override
  _FoodLayoutState createState() => _FoodLayoutState();
}

class _FoodLayoutState extends State<FoodLayout> {
  Widget _layout() {
    Orientation orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.portrait) {
      return portraitLayout();
    } else {
      return landscapeLayout();
    }
  }

  Widget landscapeLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: _infoSection(),
        ),
        Expanded(
          flex: 2,
          child: _imageSection(),
        ),
      ],
    );
  }

  Widget portraitLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: _imageSection(),
        ),
        Expanded(
          flex: 7,
          child: _infoSection(),
        ),
      ],
    );
  }

  Widget _imageSection() {
    return Container(
        child: Image(image: AssetImage('image/food.png'), fit: BoxFit.fill));
  }

  Widget _infoSection() {
    return SafeArea(
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
//              alignment: WrapAlignment.center,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    Text('25 minutes',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
                SizedBox(
                  width: 12,
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
                    Text('1 hour',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
                SizedBox(
                  width: 12,
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
                    Text(
                      '4 - 6',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        appBar: AppBar(
//          title: Text('Strawberry Pavlova'),
//        ),
        body: _layout());
  }
}
