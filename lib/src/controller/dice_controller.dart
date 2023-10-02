import 'dart:math';

import 'package:get/get.dart';

class DiceController extends GetxController {
  int solJakKubik = 2;
  RxInt onJakKubik = 4.obs;

  void baskanda() {
    solJakKubik = Random().nextInt(7);
    onJakKubik.value = Random().nextInt(7);
  }

  String teksher(int value) {
    if (value == 0) {
      return "1";
    } else {
      return "$value";
    }
  }
}
