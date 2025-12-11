import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String type;
  final int id;
  
  const DetailPage({
    super.key,
    required this.id, 
    required this.imageUrl, 
    required this.name, 
    required this.type
    });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Icon(Icons.arrow_back)
            ]
          ),
        ),
      ),
    );
  }
}
