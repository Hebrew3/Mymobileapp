import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('BookMyShoot'),
        backgroundColor: Colors.lightBlueAccent[300],
      ),
      body: Center(
        child: Column(
          children: [
            Text('Shoot'),
            Text('Photo'),
            Text('Visualize'),
          ]
        ),
      ),
    ),
  ));
}


