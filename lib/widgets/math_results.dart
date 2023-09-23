import 'package:flutter/material.dart';
import 'package:flutter_calculadora_getx/controllers/calculator_controller.dart';
import 'package:flutter_calculadora_getx/widgets/line_separator.dart';
import 'package:flutter_calculadora_getx/widgets/main_result.dart';
import 'package:flutter_calculadora_getx/widgets/sub_result.dart';
import 'package:get/get.dart';

class MathResults extends StatelessWidget {
  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SubResult(text: '${calculatorCtrl.firstNumber}'),
          SubResult(text: '${calculatorCtrl.operation}'),
          SubResult(text: '${calculatorCtrl.secondNumber}'),
          const LineSeparator(),
          MainResultText(text: '${calculatorCtrl.mathResult}'),
        ],
      ),
    );
  }
}
