import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('BookMyShoot'),
        backgroundColor: Color.fromARGB(255, 72, 48, 255),
      ),
      body: Column(
      
        children: [

          Container(
            margin: EdgeInsets.all(20),
            color: Color.fromARGB(255, 72, 48, 255),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'Name: ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'Daniel De Asis',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
            ],
          ),
        ),
         Container(
            margin: EdgeInsets.all(20),
            color: Color.fromARGB(255, 72, 48, 255),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'Age: ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  '21 yrs old',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
            ],
          ),
        ),
         Container(
            margin: EdgeInsets.all(20),
            color: Color.fromARGB(255, 72, 48, 255),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'Gender: ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'Male',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
            ],
          ),
        ),
        ],
      ),

    ),
  ));
}


