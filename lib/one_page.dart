import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widget_button/widgets/custom_button_widget.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CustomButtonWidget(
        onPressed: () {},
        tittle: 'Testandoo Custom',
        disable: false,
        titleSize: 18,
      )),
    );
  }
}
