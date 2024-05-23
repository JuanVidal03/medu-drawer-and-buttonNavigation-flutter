
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

drawer(){
  return Drawer(

    child: Padding(
      padding: EdgeInsets.only(top: 50, bottom: 50),

      child: Column(
        children: [
          Title(
            color: Colors.red,
            child: Text('Menu',
              style: TextStyle(
                fontSize: 25,
                height: 2
              ),
            )
          ),
          
          ListTile(
            title: Text('Inicio'),
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text('Deportes'),
            leading: Icon(Icons.sports),
          ),
          ListTile(
            title: Text('Tecnologia'),
            leading: Icon(Icons.laptop),
          ),
          ListTile(
            title: Text('Entretenimiento'),
            leading: Icon(Icons.movie),
          ),
        ],
      ),
    ),

  );
}