import 'package:air_book/utils/app_layout.dart';
import 'package:air_book/utils/app_style.dart';
import 'package:air_book/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';
import '../widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)), 
             Text("What are \n you looking for ?", style: Style.headLineStyle1.copyWith(fontSize: AppLayout.getHeight(35)),),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTab(firsTab: "Airline Tickets", secondTab: "Hotels"),
            Gap(AppLayout.getHeight(20)),
            const AppIconText(icon: Icons.flight_takeoff_rounded, txt: "Departure",),
            Gap(AppLayout.getHeight(10)),
            const AppIconText(icon: Icons.flight_land_rounded, txt: "Arrival"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(18), vertical: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                  color: Color(0xD91130CE),
              ),
              child: Center(
                child: InkWell(
                  onTap: (){},
                  child: Text("Find Tickets", style: Style.textStyle.copyWith(color: Colors.white),),
                ),

              ),
            ),
            Gap(AppLayout.getHeight(30)),
            const AppDoubleText(Bigtxt: "Upcoming Flight", Smalltxt: "View all"),
            Gap(AppLayout.getHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(400),
                  width: size.width*0.42,
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "lib/images/sit.jpg"
                            ),

                          )

                        ),
                      ),
                      Gap(AppLayout.getHeight(12)), 
                      Text("%20 discount on the early booking of this flight , Dont miss.", style: Style.headLineStyle2,)
                    ],
                  ),

                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width*0.44,
                          height: AppLayout.getHeight(200),
                          decoration: BoxDecoration(
                              color: Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                          ),
                          padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(15), horizontal: AppLayout.getHeight(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discount\nfor survery", style: Style.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                              Gap(AppLayout.getHeight(10)),
                              Text("Take the survery about our services and get discount ", style: Style.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),)
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45, top: -40,
                            child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent
                          ),
                        ),
                        )
                      ],
                    ), 
                    Gap(AppLayout.getHeight(15)),
                    Container(
                      width: size.width*0.44,
                      height: AppLayout.getHeight(210),
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(15), horizontal: AppLayout.getHeight(15)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xFFEC6545)
                      ),
                      child: Column(
                        children: [
                          Text("Take Love", style: Style.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          Gap(AppLayout.getHeight(5)),
                          RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '😘',
                                    style: TextStyle(fontSize: 30)
                                  ),
                                  TextSpan(
                                      text: '🥰',
                                      style: TextStyle(fontSize: 50)
                                  ),
                                  TextSpan(
                                      text: '😍',
                                      style: TextStyle(fontSize: 30)
                                  ),
                                ]
                              ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
