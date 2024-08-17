import 'package:flutter/material.dart';

class SampleFittedBox extends StatelessWidget {
  const SampleFittedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox Example'),
      ),
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Container(
            color: Colors.blue,
            child: Text('Hello', style: TextStyle(fontSize: 30)),
          ),
        ),
      ),
    );
  }
}
