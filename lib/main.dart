import 'package:flutter/material.dart';
import 'package:salon_seven_seven/constants/router_constants.dart';
import 'package:salon_seven_seven/constants/ui.dart';
import 'package:salon_seven_seven/constants/router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: themeData(context),
      onGenerateRoute: router.generateRouter,
      initialRoute: RouterInitial,
    );
  }
}
