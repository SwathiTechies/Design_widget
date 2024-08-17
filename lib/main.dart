import 'package:flutter/material.dart';
import 'package:ipeyu/stack_card/Combine_stack_card.dart';
import 'package:ipeyu/stack_card/card_sample.dart';
import 'package:ipeyu/stack_card/stack_view.dart';
import 'package:ipeyu/tab_view/tab_view.dart';
import 'Grid_view/builder.dart';
import 'Grid_view/count.dart';
import 'Grid_view/custom.dart';
import 'Grid_view/extent.dart';
import 'Input_Widgets/Textfeild.dart';
import 'Responsive/layout_builder.dart';
import 'Responsive/mediaquery.dart';
import 'container_list.dart';
import 'dart_core_library/collection_library.dart';
import 'dart_core_library/convert_library/decode.dart';
import 'dart_core_library/convert_library/encode.dart';
import 'dart_core_library/io_library.dart';
import 'dart_core_library/math_library.dart';
import 'dart_core_library/html_library.dart';
import 'dashboard.dart';
import 'flex_expanded/expanded.dart';
import 'flex_expanded/flex.dart';
import 'list_view/builder_list.dart';
import 'list_view/custom_list.dart';
import 'list_view/seperate_list.dart';
import 'list_view/simple_list.dart';
import 'login_Screen.dart';
import 'login_design.dart';
import 'loginscreen.dart';
import 'more_container/Container_property.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: NewLoginScreen(),
    );
  }
}



