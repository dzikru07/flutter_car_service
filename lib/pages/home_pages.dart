import 'package:flutter/material.dart';
import 'package:flutter_car_service/data/articles_data.dart';
import 'package:flutter_car_service/data/service.dart';
import 'package:flutter_car_service/style/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/last_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileContainer(),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Last Service",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: subText, fontSize: 12, fontWeight: FontWeight.w600),
              ),
              lastServiceList(),
              SizedBox(
                height: 8,
              ),
              Text(
                "Service List",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: subText, fontSize: 12, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 80,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: serviceData.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(right: 18),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: mainColor),
                        child: Image.asset(
                          serviceData[index].logo.toString(),
                          height: 20,
                          width: 40,
                        ),
                      );
                    })),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Current promotions",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: subText, fontSize: 12, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: articlesData.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(articlesData[index]
                                          .image
                                          .toString()))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  articlesData[index].title.toString(),
                                  style: GoogleFonts.poppins(
                                      color: mainColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 220,
                                  child: Text(
                                    articlesData[index].description.toString(),
                                    textAlign: TextAlign.left,
                                    maxLines: 4,
                                    style: GoogleFonts.poppins(
                                        color: subText,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox lastServiceList() {
    return SizedBox(
      height: 190,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: lastService.length,
          itemBuilder: ((context, index) {
            return Container(
              width: 150,
              height: 120,
              margin: EdgeInsets.fromLTRB(0, 15, 15, 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: index == 0 ? Colors.white : lastServiceAccent,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: index == 0
                        ? subText.withOpacity(0.1)
                        : Colors.white.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lastService[index].day.toString(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: subText,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            lastService[index].clock.toString(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: mainColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Text(
                        lastService[index].serviceTime.toString(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: mainColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Service",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: subText,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    lastService[index].desc.toString(),
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        color: mainColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    color: index == 0 ? blueAccent : mainColor,
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      splashColor: index == 0 ? mainColor : blueAccent,
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Detail",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          })),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: subText.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/profile_logo.png",
                width: 40,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Helloo, James",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: mainColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Premium customers",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: subText,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
          Icon(
            Icons.notifications_outlined,
            color: mainColor,
            size: 30,
          )
        ],
      ),
    );
  }
}
