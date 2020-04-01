import 'package:flutter/material.dart';

//void main() {
//  MyApp();
//}
main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
          appBar: AppBar(
            title: Text("MyApp"),
          ),
          body: TextContent()
      ),
    );
  }
}

class TextContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "MyApp",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: Colors.orange,
            fontSize: 30
        ),
      ),
    );
  }
}
