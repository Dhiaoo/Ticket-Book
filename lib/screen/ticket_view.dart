import 'package:air_book/utils/app_layout.dart';
import 'package:air_book/utils/app_style.dart';
import 'package:air_book/widgets/column_layout.dart';
import 'package:air_book/widgets/thic_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';

import '../widgets/layout_builder_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> tickets;
  final bool? isColor;
  const TicketView({Key? key , required this.tickets, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
      isColor==null? 10:0;
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true? 166:169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            //blue part
            Container(
              decoration:  BoxDecoration(
                color: isColor==null? Color(0xFF526799): Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(21), topLeft: Radius.circular(21))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(tickets['from']['code'], style: isColor==null? Style.headLineStyle3.copyWith(color: Colors.white):Style.headLineStyle3.copyWith(color: Colors.black),),
                      Expanded(child: Container()),
                      ThiContainer(isColor: isColor,),
                      Expanded(child: Stack(
                       children: [
                         SizedBox(
                           height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints){
                              return Flex(
                                  direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                  width: AppLayout.getWidth(5), height:AppLayout.getHeight(1), child: DecoratedBox(
                                  decoration: BoxDecoration(color: isColor==null? Colors.white: Colors.blueAccent),
                                ),
                                ) ),
                              );
                            },
                          ),
                        ),
                         Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.airplanemode_active_outlined, color: isColor==null? Colors.white: Colors.blueAccent,),))
                       ]
                      )),
                      ThiContainer(isColor: isColor),
                      Expanded(child: Container()),
                      Text(tickets['to']['code'], style: isColor==null? Style.headLineStyle3.copyWith(color: Colors.white):Style.headLineStyle3.copyWith(color: Colors.black),),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100), child: Text(tickets['from']['name'], style: isColor==null? Style.headLineStyle4.copyWith(color: Colors.white):Style.headLineStyle4.copyWith(color: Colors.black),),
                      ), 
                      Text(tickets['flying_time'], style: isColor==null? Style.headLineStyle3.copyWith(color: Colors.white):Style.headLineStyle3.copyWith(color: Colors.black),),
                      SizedBox(
                        width: AppLayout.getWidth(100), child: Text(tickets['to']['name'], textAlign: TextAlign.end , style: isColor==null?Style.headLineStyle4.copyWith(color: Colors.white):Style.headLineStyle4.copyWith(color: Colors.black),),
                      ),
                    ],
                  )
                ],
              ),


            ),
            //orange part
            Container(
              color:  isColor==null?Style.orangeColor:Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeight(20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(   10),
                          bottomRight: Radius.circular( 10)
                        )
                      ),

                    ),
                  ),
                  Expanded(child:  AppLayoutBuilder(isColor: isColor, sections: 15,)),
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeight(20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          )
                      ),

                    ),
                  )
                ],
              ),
            ) ,
            //buttom part
            Container(
              decoration: BoxDecoration(
                color:  isColor==null?Style.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null? 21:0), bottomRight: Radius.circular(isColor==null?21:0)),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstxt: tickets['date'].toString(),
                        Secondtxt: 'Date', alignment:
                      CrossAxisAlignment.start,
                        isColor: isColor,),
                      AppColumnLayout(
                          firstxt: tickets['flying_time'].toString(),
                          Secondtxt: "Departure Time ",
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor),
                      AppColumnLayout(
                          firstxt: tickets["number"].toString(),
                          Secondtxt: "Number",
                          alignment: CrossAxisAlignment.end,
                           isColor: isColor)

                    ],
                  )
                ],
              ),

            )
          ],
        ),
      ),

    );
  }
}
