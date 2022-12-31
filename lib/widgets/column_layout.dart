import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final bool? isColor;
  final String firstxt;
  final String Secondtxt;
  final CrossAxisAlignment alignment;
   AppColumnLayout({Key? key, required this.firstxt, required this.Secondtxt, required this.alignment, required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstxt, style: isColor==null?Style.headLineStyle3.copyWith(color: Colors.white):Style.headLineStyle3.copyWith(color: Colors.black),),
        Gap(AppLayout.getHeight(5)),
        Text(Secondtxt, style:isColor==null? Style.headLineStyle4.copyWith(color: Colors.white):Style.headLineStyle4,)
      ],
    );
  }
}
