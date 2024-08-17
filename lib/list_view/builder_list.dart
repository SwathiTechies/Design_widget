import 'package:flutter/material.dart';

class BuilderList extends StatefulWidget {
  const BuilderList({super.key});

  @override
  State<BuilderList> createState() => _BuilderListState();
}

class _BuilderListState extends State<BuilderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder Example'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text('Item $index'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped on Item $index')),
              );
            },
          );
        },
      ),
    );
  }
}

