
import 'package:flutter/material.dart';

class SeparateList extends StatefulWidget {
  const SeparateList({super.key});

  @override
  State<SeparateList> createState() => _SeparateListState();
}

class _SeparateListState extends State<SeparateList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.separated Example'),
      ),
      body: ListView.separated(
        itemCount: 30,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.message),
            title: Text('Message $index'),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}

