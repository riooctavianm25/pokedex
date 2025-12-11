import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String type;

  const DetailPage({
    super.key,
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
                    icon: const Icon(Icons.arrow_back, size: 28),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1D1D45),
                      ),
                    ),
                    Text(
                      widget.type,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),

            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Image.network(
                  widget.imageUrl,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Forms"), 
              Text("Detail"),
              Text("Types"),
              Text("Stats"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
