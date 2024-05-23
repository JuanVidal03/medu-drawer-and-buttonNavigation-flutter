
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

drawer(cambioVista){
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
          // elementos de navegacion
          ListTile(
            title: Text('Inicio'),
            leading: Icon(Icons.home),
            onTap: () {
              cambioVista.cambioPosicion(0);
            },
          ),
          ListTile(
            title: Text('Deportes'),
            leading: Icon(Icons.sports),
            onTap: () {
              cambioVista.cambioPosicion(1);
            },
          ),
          ListTile(
            title: Text('Entretenimiento'),
            leading: Icon(Icons.movie),
            onTap: () {
              cambioVista.cambioPosicion(2);
            },
          ),
        ],
      ),
    ),

  );
}