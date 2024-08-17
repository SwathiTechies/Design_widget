// import 'package:flutter/material.dart';
//
//
// class HtmlScreen extends StatefulWidget {
//   const HtmlScreen({super.key});
//
//   @override
//   State<HtmlScreen> createState() => _HtmlScreenState();
// }
//
// class _HtmlScreenState extends State<HtmlScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter with dart:html'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Call a function to open a new browser window
//             openNewBrowserWindow('https://www.example.com');
//           },
//           child: Text('Open Browser Window'),
//         ),
//       ),
//     );
//   }
//     // Function to open a new browser window
//     void openNewBrowserWindow(String url) {
//       // Use dart:ui's window implementation for web
//       if (ui.PlatformDispatcher.instance.isWeb) {
//         html.window.open(url, 'New Window');
//       } else {
//         // Handle other platforms if necessary
//         print('Opening browser window is not supported on this platform.');
//       }
// }
//
