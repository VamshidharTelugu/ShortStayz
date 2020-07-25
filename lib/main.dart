import 'package:flutter/material.dart';
import 'package:short_stays/main_screen.dart';
import 'package:short_stays/screens/hotel_detail_screen.dart';
import 'package:short_stays/screens/introduction_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShortStayz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HotelDetailScreen(),
    );
  }
}
