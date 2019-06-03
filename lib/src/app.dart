import 'package:flutter/material.dart';
import 'views/count_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: CountPage(),
      ),
    );
  }
}