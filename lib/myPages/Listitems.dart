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
        title: const Text('BookMyShoot'),
      ),
      body: ListView(
        children: cameras.map((camera) {
          return ItemCard(camera: camera);
        }).toList(),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Cameras camera;

  const ItemCard({super.key, required this.camera});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              camera.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(camera.description),
            const SizedBox(height: 8),
            Text(
              '\$${camera.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}