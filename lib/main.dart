import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'Navigator.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:NavigatorPage(),
    );
  }

}