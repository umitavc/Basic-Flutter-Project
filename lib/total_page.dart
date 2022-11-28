import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplefluttercart/my_cart.dart';

import 'my_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Total items",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(() => Text(
                    "${c.sum.toString()}",
                    style: TextStyle(fontSize: 30, color: Colors.redAccent),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 180,
                height: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.blue.shade800),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text(
                      "Go Back",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
