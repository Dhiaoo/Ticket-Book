import 'package:air_book/utils/app_layout.dart';
import 'package:air_book/utils/app_style.dart';
import 'package:air_book/widgets/column_layout.dart';
import 'package:air_book/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(20)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getWidth(86),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(35)),
                      image: DecorationImage(
                        image: AssetImage(
                            "lib/images/img_1.png"
                        ),
                      )
                  ),
                ),
                Gap(AppLayout.getWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Book Tickets", style: Style.headLineStyle1,),
                    Gap(AppLayout.getHeight(2)),
                    Text("New-York", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey.shade500
                    ),),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getWidth(3)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color(0xFFFEF4F3)
                      ),
                      child: Row(
                        children: [

                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799)
                            ),
                            child: Icon(
                              FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15,
                            ),
                             ),
                            Gap(AppLayout.getHeight(5)),
                            Text("Premuim Status", style: TextStyle(
                            fontWeight: FontWeight.w500, color: Color(0xFF526799)
                                     ),)


                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Text("Edit", style: Style.textStyle.copyWith(color: Style.primaryColor, fontWeight: FontWeight.w300),),
                    )
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            Divider(color: Colors.grey.shade300,), 
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(80),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                    color: Style.primaryColor
                  ),
                ),
                Positioned(
                  right: -AppLayout.getHeight(35),
                    top: -AppLayout.getHeight(30),
                    child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2))
                  ),

                ),

                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(35), vertical: AppLayout.getWidth(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, size: 27, color: Style.primaryColor,),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                          ),
                      Gap(AppLayout.getWidth(12)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("You\'ve got a new award", style: Style.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),),
                          Text("You have 95 flight in this year", style: Style.headLineStyle2.copyWith(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9)),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ), 
            Gap(AppLayout.getHeight(25)), 
            Text("Accumulated miles", style: Style.headLineStyle2,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                color: Style.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ]
              ),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(15)),
                  Text("1920053",
                    style: TextStyle(
                      fontSize: 45, fontWeight: FontWeight.w500, color: Style.textColor
                    ),
                  ),
                  Gap(AppLayout.getHeight(20)), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Miles accured", style: Style.headLineStyle4.copyWith(fontSize: 16),),
                      Text("30 December 2022", style: Style.headLineStyle4.copyWith(fontSize: 16),)
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Divider(color: Colors.grey.shade300,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstxt: "23 042", Secondtxt: "Miles", alignment: CrossAxisAlignment.start, isColor: true),
                      AppColumnLayout(firstxt: "Airline CO", Secondtxt: "Resived from", alignment: CrossAxisAlignment.end, isColor: true),
                    ],
                  ),
                  Gap(AppLayout.getHeight(7)),
                  AppLayoutBuilder(isColor: false, sections: 16),
                  Gap(AppLayout.getHeight(7)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstxt: "24", Secondtxt: "Miles", alignment: CrossAxisAlignment.start, isColor: true),
                      AppColumnLayout(firstxt: "McDona\'s", Secondtxt: "Resived from", alignment: CrossAxisAlignment.end, isColor: true),
                    ],
                  ),
                  Gap(AppLayout.getHeight(7)),
                  AppLayoutBuilder(isColor: false, sections: 16),
                  Gap(AppLayout.getHeight(7)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstxt: "52 340", Secondtxt: "Miles", alignment: CrossAxisAlignment.start, isColor: true),
                      AppColumnLayout(firstxt: "Exuma", Secondtxt: "Resived from", alignment: CrossAxisAlignment.end, isColor: true),
                    ],
                  ),
                  Gap(AppLayout.getHeight(25)),
                  InkWell(
                    onTap: (){},
                    child: Center(
                    child: Text("How to get more miles ", style: Style.textStyle.copyWith(
                      color: Style.primaryColor,
                      fontWeight: FontWeight.w500
                    ),),
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
