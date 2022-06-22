import 'package:app_2/widgets/example.dart';
import 'package:flutter/material.dart';


void main() {
runApp(Example());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Test',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: Scaffold(body: Example()),
);
}
}