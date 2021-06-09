import 'package:flutter/material.dart';
import 'package:githun_search/app/screens/home/home_screen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Search',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}
