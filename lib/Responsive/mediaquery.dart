import 'package:flutter/material.dart';


class ResponsiveMediaQuery extends StatelessWidget {
  const ResponsiveMediaQuery({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;
    var isPortrait = mediaQuery.orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Design Example'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: isPortrait ? screenWidth * 0.8 : screenWidth * 0.4,
          height: isPortrait ? screenHeight * 0.3 : screenHeight * 0.6,
          child: Center(
            child: Text(
              'Hello, Responsive World!',
              style: TextStyle(color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
