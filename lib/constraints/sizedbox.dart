import 'package:flutter/material.dart';

class SampleSizedBox extends StatelessWidget {
  const SampleSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox Example'),
      ),
      body: Center(
        child: SizedBox(
          width: 150,
          height: 150,
          child: Container(
            color: Colors.blue,
            child: Center(child: Text('Hello')),
          ),
        ),
      ),
    );
  }
}
