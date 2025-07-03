import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_firstapp/myPages/Dashboard.dart';
import 'package:my_firstapp/myPages/Listitems.dart';
import 'package:my_firstapp/myPages/Rentform.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Rentform(),
      '/add': (context) => Rentform(),
    },
  ));
}


