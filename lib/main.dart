import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff0c0e22),
        backgroundColor: Color(0xff131639),
        scaffoldBackgroundColor: Color(0xff0c0e22),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
