import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../extensions/color_ext.dart';
import 'buttons/circle_btn_container_view.dart';

class CustomStepperView extends StatelessWidget {
  const CustomStepperView({
    super.key,
    required this.value,
    required this.subtract,
    required this.add,
    this.smallBtnSize = 40,
    this.largeBtnSize = 60,
  });

  final int value;
  final VoidCallback subtract;
  final VoidCallback add;
  final double smallBtnSize;
  final double largeBtnSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleBtnContainerView(
          size: smallBtnSize,
          hasBorder: true,
          child: InkWell(
            onTap: subtract,
            child: Icon(
              CupertinoIcons.minus,
              color: C.text,
              size: smallBtnSize.toInt() / 2,
            ),
          ),
        ),
        CircleBtnContainerView(
          size: largeBtnSize,
          child: Center(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(value.toStringAsPrecision(1)).styled(
                  size: smallBtnSize.toInt() / 1.6, weight: FontWeight.w700),
            ),
          ),
        ),
        CircleBtnContainerView(
          size: smallBtnSize,
          hasBorder: true,
          child: InkWell(
            onTap: add,
            child: Icon(
              CupertinoIcons.plus,
              color: C.text,
              size: smallBtnSize.toInt() / 2,
            ),
          ),
        )
      ],
    );
  }
}
