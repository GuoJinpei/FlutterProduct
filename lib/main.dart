import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '郭晋沛',
      home: Scaffold(
        appBar: AppBar(
          title: Text("郭晋沛"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget> [
        ProductItem("Apple1", "Macbook Product1","http://pic.app.dazhoushan.com/Fki01gy_BPA3gDmKdhu9ELHT5Ngx.png"),
        ProductItem("Apple2", "Macbook Product2","http://pic.app.dazhoushan.com/Fki01gy_BPA3gDmKdhu9ELHT5Ngx.png"),
        ProductItem("Apple3", "Macbook Product3","http://pic.app.dazhoushan.com/Fki01gy_BPA3gDmKdhu9ELHT5Ngx.png"),
      ]
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final String productName;
  final String productImgUrl;
  ProductItem(this.name, this.productName, this.productImgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2
        )
      ),
      child: Column(
        children: <Widget>[
          Text(name, style: TextStyle(fontSize: 20),),
          Text(productName, style: TextStyle(fontSize: 15),),
          SizedBox(height: 10,),
          Image.network(productImgUrl),
        ],
      ),
    );
  }
}