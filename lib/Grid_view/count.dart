import 'package:flutter/material.dart';

class CountGrid extends StatefulWidget {
  const CountGrid({super.key});

  @override
  State<CountGrid> createState() => _CountGridState();
}

class _CountGridState extends State<CountGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.count Example'),
      ),
      body: GridView.count(
        crossAxisCount: 2,  // Number of columns
        children: List.generate(20, (index) {
          return Center(
            child: Container(
              color: Colors.blue,
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
