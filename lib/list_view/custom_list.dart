import 'package:flutter/material.dart';

class CustomList extends StatefulWidget {
  const CustomList({super.key});

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.custom Example'),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
            leading: Icon(Icons.place),
            title: Text('Place $index'),
          ),
          childCount: 20,
        ),
      ),
    );
  }
}

