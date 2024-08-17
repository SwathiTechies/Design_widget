import 'package:flutter/material.dart';

class SampleFractionSizedBox extends StatelessWidget {
  const SampleFractionSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox Example'),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: Container(
            color: Colors.blue,
            child: Center(child: Text('Hello')),
          ),
        ),
      ),
    );
  }
}

