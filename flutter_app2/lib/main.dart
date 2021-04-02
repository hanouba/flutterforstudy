import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: new Text(
                "CCCCCC", style: new TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
              new Text("这是哪里啊 这是没啥事啊" ,
              style: new TextStyle(
                color: Colors.grey[500]
              ),
              ),
            ],
          ),
          ),
          new Icon(Icons.star,
          color: Colors.red,),
          new Text("41")
        ],
      ),
    );


    Column buildButtonColumn(IconData icon,String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon,color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color
              ),
            ),
          )
        ],
      )
    }

    return new MaterialApp(
      title: "demo1",
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}
