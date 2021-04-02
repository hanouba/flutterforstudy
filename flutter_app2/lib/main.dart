import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return MaterialApp(
      title: "你好这是flutter",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("app bar title"),
        ),
        body: new Center(
          // child: new Text("body child"),
          child: new RandWords(),
        ),

      ),
    );
  }
}
class RandWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandWordsState();
  }


}

class RandWordsState extends State<RandWords> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair  = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }

}
