import 'package:flutter/material.dart';

class SampleConstrain extends StatelessWidget {
  const SampleConstrain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox Example'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 100,
            maxWidth: 200,
            maxHeight: 200,
          ),
          child: Container(
            color: Colors.blue,
            width: 300,
            height: 300,
            child: Center(child: Text('Hello')),
          ),
        ),
      ),
    );
  }
}
