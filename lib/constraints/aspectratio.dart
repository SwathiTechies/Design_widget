import 'package:flutter/material.dart';

class SampleAspectRatio extends StatelessWidget {
  const SampleAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio Example'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.blue,
            child: Center(child: Text('16:9 Aspect Ratio')),
          ),
        ),
      ),
    );
  }
}
