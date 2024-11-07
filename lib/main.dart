import 'package:flutter/material.dart';
import 'package:ujian_morjaah/home_page.dart';
import 'package:ujian_morjaah/login_page.dart';
import 'package:ujian_morjaah/spalsh_screen.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}