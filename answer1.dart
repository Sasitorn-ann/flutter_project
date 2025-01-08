import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid Layout Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row แรก
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildContainer(Colors.red),
                  SizedBox(width: 20),
                  buildContainer(Colors.green),
                  SizedBox(width: 20),
                  buildContainer(Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              // Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildContainer(Colors.orange),
                  SizedBox(width: 20),
                  buildContainer(Colors.purple),
                  SizedBox(width: 20),
                  buildContainer(Colors.yellow),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget buildContainer(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
