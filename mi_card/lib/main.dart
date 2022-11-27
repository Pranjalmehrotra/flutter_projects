import 'package:flutter/material.dart';
import 'package:mi_card/view/pages/list_tile_widget_challenge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      ///This is for redirecting to the ContinerWidgetChallenge class present in the pages(container_widget_challenge.dart)
      //home: ContainerWidgetChallenge(),

      ///This is for redirecting to the ListTileWidgetChallenge class present in the pages(second_method_ui_implementation.dart)
      home: ListTileWidgetChallenge(),

      ///This is redirecting to the LayoutChallengeSolution class present in pages(layout_challenge_solution.dart)
      //home: LayoutChallengeSolution(),
    );
  }
}
