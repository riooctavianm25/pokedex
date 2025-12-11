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
    required this.type,
    });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context) 
                    ),
                  ),
                  Column(
                    children: [
                      Text(widget.name, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      Text(widget.type, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)) 
                    ],
                  )
                ],
              )
            ]
          ),
        ),
    );
  }
}
