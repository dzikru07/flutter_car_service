import 'package:flutter/material.dart';
import 'package:flutter_car_service/pages/get_started.dart';
import 'style/color.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorTheme,
      ),
      home: const GetStarted(),
    );
  }
}
