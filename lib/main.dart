import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Grid View Extent',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.lightGreenAccent,
              ),
            ),
          ),
        ),
        body: GridView.extent(
            maxCrossAxisExtent: 100,
          mainAxisSpacing: 20.0,
          padding: EdgeInsets.all(10),
          children:List.generate(100, (index) {
            return Card(
            child: Column(
               children: [
                 Icon(Icons.account_circle_outlined),
                 SizedBox(
                   height: 10,
                 ),
                 Text('Menu')
               ],
             ),
            );
          }
        ),
       ),
      ),
    );
  }
}