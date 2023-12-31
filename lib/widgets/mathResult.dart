import 'package:calculadorora_getx/controllers/calculator_controller.dart';
import 'package:calculadorora_getx/widgets/line_separator.dart';
import 'package:calculadorora_getx/widgets/main_result.dart';
import 'package:calculadorora_getx/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathResult extends StatelessWidget {
  //.find es para buscar la intancia en este caso de calculatorController
  final  calculatorCtrl = Get.find<CalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        SubResult( text: '${calculatorCtrl.firstNumber}' ),
      SubResult( text: '${calculatorCtrl.operation}' ),
      SubResult( text: '${calculatorCtrl.secondNumber}' ),
      LineSeparator(),
      MainResultText( text: '${calculatorCtrl.mathResult}' ),
      ],
    ));
  }
}