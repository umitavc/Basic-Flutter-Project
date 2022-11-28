import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value + pens.value;

  increment() {
    books.value++;
  }

  deincrement() {
    if (books.value <= 0) {
      Get.snackbar("Buying", "Can not be  less than zero", icon: const Icon(Icons.alarm), barBlur: 20, isDismissible: false, duration: const Duration(seconds: 3));
    } else {
      books.value--;
    }
  }

  incrementPens() {
    pens.value++;
  }

  deincrementPens() {
    if (pens.value <= 0) {
      Get.snackbar("Buying", "Can not be  less than zero", icon: const Icon(Icons.alarm), barBlur: 20, isDismissible: false, duration: const Duration(seconds: 3));
    } else {
      pens.value--;
    }
  }
}
