import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/news.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.pink[800],
        ),
        debugShowCheckedModeBanner: false,
        home: News());
  }
}
