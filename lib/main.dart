// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:actividad_2/components/bottomNavigationBar.dart';
import 'package:actividad_2/components/controlador.dart';
import 'package:actividad_2/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(Controlador());
  runApp(const MyApp());
}

// para cambiar la ventana
Controlador cambioVentana = Get.find();
// paginas
contenidoInicio(){
  return Text('INICIO', style: TextStyle(fontSize: 30));
}
contenidoEntretenimiento(){
  return Text('ENTRETENIMIENTO', style: TextStyle(fontSize: 30),);
}
contenidoDeportes(){
  return Text('DEPORTES', style: TextStyle(fontSize: 30));
}

// paginas actuales
List paginas = [
    contenidoInicio(),
    contenidoDeportes(),
    contenidoEntretenimiento()
];



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // app bar
        appBar: AppBar(
          title: Text('Aplicacion de Noticias', style: TextStyle(fontSize: 25) ),
          backgroundColor: Colors.blue,
          // cambiar el color del texto de app bar
          foregroundColor: Colors.white,
        ),
        // menu drawer
        drawer: drawer(cambioVentana),
        // bottom navigation
        bottomNavigationBar: bottomNavigationBar(), 

        // body
        body: Center(
          child: Obx(() => paginas[cambioVentana.cambioVista]),
        ),

      ),
    );
  }
}