// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:actividad_2/components/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: Text('Actividad 2', style: TextStyle(fontSize: 25) ),
          backgroundColor: Colors.blue,
        ),

        drawer: drawer(),


      ),



    );
  }
}