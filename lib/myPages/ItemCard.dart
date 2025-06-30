import 'package:flutter/material.dart';
import 'cameras.dart';

class ItemCard extends StatelessWidget {
  final Cameras cameras;
  const ItemCard({
    super.key,
    required this.cameras,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(cameras.price.toString()),
          Text(cameras.name),
        ],
      ),
    );
  }
}