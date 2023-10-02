import 'package:dice_with_getx/src/controller/dice_controller.dart';
import 'package:dice_with_getx/src/widgets/dice_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ctl = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Tapshyrma 5', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffFFE93B),
      body: Center(
        child: Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DiceWidget(
                onTap: ctl.baskanda,
                solJakKubik: ctl.teksher(ctl.solJakKubik),
              ),
              DiceWidget(
                onTap: ctl.baskanda,
                solJakKubik: ctl.teksher(ctl.onJakKubik.value),
              ),
            ],
          );
        }),
      ),
    );
  }
}
