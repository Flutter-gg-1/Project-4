import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../extensions/color_ext.dart';
import 'circle_btn_container_view.dart';

class CustomBackBtnView extends StatelessWidget {
  const CustomBackBtnView({super.key, required this.context});

  final BuildContext context;
  void _navigateBack(BuildContext context) => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateBack(context),
      child: const CircleBtnContainerView(
        size: 60,
        child: Icon(CupertinoIcons.arrow_left, size: 35, color: C.text),
      ),
    );
  }
}
