import 'package:flutter/material.dart';

import 'Cameras.dart';

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {

  List<Cameras> cameras = [
    Cameras(
      name: 'Canon EOS R5',
      description: 'High-end mirrorless camera with 45MP sensor and 8K video.',
      price: 3899.99,
    ),
    Cameras(
      name: 'Nikon Z6 II',
      description: 'Versatile full-frame mirrorless camera with dual card slots.',
      price: 1999.99,
    ),
    Cameras(
      name: 'Sony A7 III',
      description: 'Popular full-frame mirrorless camera with excellent low-light performance.',
      price: 1999.99,
    ),
    Cameras(
      name: 'Fujifilm X-T4',
      description: 'Compact APS-C mirrorless camera with in-body stabilization.',
      price: 1699.99,
    ),
    Cameras(
      name: 'Panasonic Lumix GH5',
      description: 'Micro Four Thirds camera with advanced video features.',
      price: 1299.99,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BookMyShoot'),
      ),
      body: Column(
        children: cameras.map((camera){
          return Itemcard(cameras: camera);
        }).toList(),
      ),
    );
  }
}