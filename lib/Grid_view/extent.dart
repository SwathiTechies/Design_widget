import 'package:flutter/material.dart';

class ExtentGrid extends StatefulWidget {
  const ExtentGrid({super.key});

  @override
  State<ExtentGrid> createState() => _ExtentGridState();
}

class _ExtentGridState extends State<ExtentGrid> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('GridView.extent Example'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150,  // Maximum width of each tile
        children: List.generate(20, (index) {
          return Center(
            child: Container(
              color: Colors.green,
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
