import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder Example',  style: Theme.of(context).textTheme.headline4,),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNarrowContainers();
          }
        },
      ),
    );
  }
  Widget _buildWideContainers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(width: 200, height: 200, color: Colors.green),
        SizedBox(width: 20),
        Container(width: 200, height: 200, color: Colors.yellow),
      ],
    );
  }

  Widget _buildNarrowContainers() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(width: 200, height: 200, color: Colors.red),
        SizedBox(height: 20),
        Container(width: 200, height: 200, color: Colors.blue),
      ],
    );
  }
}



