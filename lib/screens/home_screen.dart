import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import '../utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_booking_app/screens/hotel_screen.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good morning', style: Styles.headlineStyle3),
                        const Gap(5),
                        Text('Book Tickets', style: Styles.headlineStyle1),
                      ]),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/logo.jpg"),
                        )),
                  ),
                ],
              ),
              const Gap(25),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBEC205),
                    ),
                    Text("Search", style: Styles.headlineStyle4)
                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Flights", style: Styles.headlineStyle2),
                  InkWell(
                    onTap: () {},
                    child: Text("View all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor)),
                  )
                ],
              )
            ],
          ),
        ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children:
                ticketList.map((ticket) => TicketView(ticket: ticket)).toList(),
          ),
        ),
        const Gap(15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hotels", style: Styles.headlineStyle2),
              InkWell(
                  onTap: () {},
                  child: Text("View all",
                      style: Styles.textStyle
                          .copyWith(color: Styles.primaryColor)))
            ],
          ),
        ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children:
                hotelsList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
          ),
        ),
      ]),
    );
  }
}
