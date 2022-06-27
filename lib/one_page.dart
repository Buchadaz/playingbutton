import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widget_button/widgets/custom_button_widget.dart';

class OnePage extends StatefulWidget {
  OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));

      valorAleatorio.value = Random().nextInt(1000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: valorAleatorio,
              builder: (_, valor, __) => Text(
                    'O valor é: $valor',
                    style: const TextStyle(fontSize: 20),
                  )),
          const SizedBox(
            height: 20,
          ),
          CustomButtonWidget(
            onPressed: () => random(),
            tittle: 'Testandoo Custom',
            disable: false,
            titleSize: 18,
          ),
        ],
      )),
    );
  }
}
