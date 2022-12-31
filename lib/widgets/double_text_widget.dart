import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class AppDoubleText extends StatelessWidget {
  final String Bigtxt;
  final String Smalltxt;
  const AppDoubleText({Key? key , required this.Bigtxt, required this.Smalltxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Bigtxt, style: Style.headLineStyle2),
          InkWell(
            onTap: (){},
            child: Text(Smalltxt, style: Style.textStyle.copyWith(color: Style.primaryColor),),
          ),
        ],
    );
  }
}
