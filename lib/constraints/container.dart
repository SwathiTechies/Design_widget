import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container with Constraints'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Container(
            color: Colors.red,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            child: Center(child: Text('Hello')),
          ),
        ),
      ),
    );
  }
}

