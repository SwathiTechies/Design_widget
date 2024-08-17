import 'package:flutter/material.dart';

class BuilderGrid extends StatefulWidget {
  const BuilderGrid({super.key});

  @override
  State<BuilderGrid> createState() => _BuilderGridState();
}

class _BuilderGridState extends State<BuilderGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.builder Example'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,  // Number of columns
        ),
        itemCount: 50,  // Number of items
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              color: Colors.purple,
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
        },
      ),
    );
  }
}

