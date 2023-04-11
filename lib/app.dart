import 'package:flutter/material.dart';

import 'presentation/home/home.dart';

//here goes the theme in the future:
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Sauce-Code-Pro',
        primarySwatch: Colors.blue,
      ),
      //replace this later with auto_route
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
