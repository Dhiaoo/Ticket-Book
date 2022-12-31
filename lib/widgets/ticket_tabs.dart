import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTab extends StatelessWidget {
  final String firsTab;
  final String secondTab;
  const AppTicketTab({Key? key, required this.firsTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6FD)
        ),
        child: Row(
          children: [
            Container(
              width: size.width*.44,
              height: AppLayout.getHeight(40),
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.white,
              ),
              child: Center(child: Text(firsTab),),
            ),
            Container(
              width: size.width*.44,
              height: AppLayout.getHeight(40),
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secondTab),),
            )
          ],
        ),
      ),
    );
  }
}
