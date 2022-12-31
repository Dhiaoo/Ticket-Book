import 'package:air_book/screen/hotel_screen.dart';
import 'package:air_book/screen/ticket_view.dart';
import 'package:air_book/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Good Morning", style: Style.headLineStyle3,),
                           Text("Book Tickets", style: Style.headLineStyle1,)
                         ],
                       ),
                       Container(
                         height: 60,
                         width: 80,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(35),
                           image: const DecorationImage(
                             fit: BoxFit.fitHeight,
                             image: AssetImage(
                                   'lib/images/img_1.png'),
                            ),
                         ),
                       )
                     ],
                   ),
                  const Gap(15),
                  TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color : Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelStyle: Style.headLineStyle3,



                      ),
                    ),
                  const Gap(25),
                  const AppDoubleText(Bigtxt: "Upcoming Flight", Smalltxt: "View all")

                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList.map((ticket) => TicketView(tickets: ticket)).toList(),
              ),
            ),
            const Gap(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: const AppDoubleText(Bigtxt: "Hotels", Smalltxt: "View all"),
            ),
            const Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: hotelList.map((item) => HotelScreen(hotel: item)).toList() ,
              ),
            )

          ],
        ),
      ),
    );
  }
}
