import 'package:air_book/screen/ticket_view.dart';
import 'package:air_book/utils/app_info_list.dart';
import 'package:air_book/utils/app_layout.dart';
import 'package:air_book/utils/app_style.dart';
import 'package:air_book/widgets/column_layout.dart';
import 'package:air_book/widgets/layout_builder_widget.dart';
import 'package:air_book/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getWidth(20)),
              children: [
                Gap(AppLayout.getHeight(20)),
                Text(
                  "Tickets",
                  style: Style.headLineStyle1,
                ),
                Gap(AppLayout.getHeight(30)),
                AppTicketTab(firsTab: "Upcoming", secondTab: "Previos"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    tickets: ticketList[0],
                    isColor: true,
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getWidth(20)),
                  margin:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: Column(
                    children: [
                      AppLayoutBuilder(
                        isColor: true,
                        sections: 15,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstxt: "Flutter DB",
                            Secondtxt: "Passenger",
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstxt: "5461 562318",
                            Secondtxt: "Passport",
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(15)),
                      const AppLayoutBuilder(
                        isColor: true,
                        sections: 15,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstxt: "0045 123454",
                            Secondtxt: "Number of E-ticket",
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstxt: "B2SG28",
                            Secondtxt: "Booking code",
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(15)),
                      const AppLayoutBuilder(
                        isColor: true,
                        sections: 15,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "lib/images/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    "   *** 2435",
                                    style: Style.headLineStyle3
                                        .copyWith(color: Colors.black),
                                  )
                                ],
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text("Payment method",
                                  style: Style.headLineStyle4),
                            ],
                          ),
                          AppColumnLayout(
                              firstxt: "\$234.40",
                              Secondtxt: "Price",
                              alignment: CrossAxisAlignment.end,
                              isColor: true),
                        ],
                      ),
                      Gap(AppLayout.getHeight(15)),
                      const AppLayoutBuilder(
                        isColor: true,
                        sections: 15,
                        width: 5,
                      ),
                    ],
                  ),
                ),
                //barcode
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      color: Colors.white),
                  margin: EdgeInsets.only(
                      left: AppLayout.getHeight(15),
                      right: AppLayout.getHeight(15)),
                  padding: EdgeInsets.only(
                      top: AppLayout.getHeight(15),
                      bottom: AppLayout.getHeight(15)),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: "https://github.com/Dhiaoo?tab=repositories",
                        drawText: false,
                        color: Style.textColor,
                        width: double.infinity,
                        height: AppLayout.getHeight(70),
                      ),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                TicketView(tickets: ticketList[0])
              ],
            ),
            Positioned(
                left: AppLayout.getHeight(22),
                top: AppLayout.getHeight(295),
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Style.textColor, width: 2)),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Style.textColor,
                  ),
                )),
            Positioned(
                right: AppLayout.getHeight(22),
                top: AppLayout.getHeight(295),
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Style.textColor, width: 2)),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Style.textColor,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
