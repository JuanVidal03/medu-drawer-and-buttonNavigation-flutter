import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Controlador extends GetxController{
  final _cambioVista = 0.obs;

  void cambioPosicion(int numero){
    _cambioVista.value = numero;
  }

  int get cambioVista => _cambioVista.value;
}