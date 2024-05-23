
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

bottomNavigationBar(){
  return BottomNavigationBar(

    items: <BottomNavigationBarItem> [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Inicio'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.sports),
        label: 'Deportes'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.movie),
        label: 'Entretenimiento'
      ),

    ],
  );
}