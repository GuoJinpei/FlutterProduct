import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: ContentWidget(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print("AddBtnClick");
          },
        ),
      ),
    );
  }
}

class ContentWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                setState(() {
                  counter++;
                });
                print("$counter");
              },
              child: Text("计数+1"),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  counter--;
                });
                print("$counter");
              },
              child: Text("计数-1"),
            )
          ],
        ),
        Text("当前计数$counter",style: TextStyle(fontSize: 25),)
      ],
    );
  }
}
