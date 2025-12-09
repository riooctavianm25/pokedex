import 'package:flutter/material.dart';

class PokemonCardWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String type;
  final VoidCallback onTap;

  const PokemonCardWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.type, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Type == 'Grass'?Colors.green : Type == 'Fire'? Colors.red : Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, height: 100, width: 100),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            'Type: $type',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}