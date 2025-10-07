import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item? item;
  const ItemPage({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    if (item == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Item Page')),
        body: const Center(child: Text('No item data provided')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(item!.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Hero(
            tag: item!.name,
            child: Image.network(item!.imageUrl, height: 250, fit: BoxFit.cover),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(item!.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Price: Rp ${item!.price}', style: const TextStyle(fontSize: 20)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Stock: ${item!.stock} | Rating: ${item!.rating}',
                style: const TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}