import 'package:flutter/material.dart';
import 'package:flutter_car_service/component/bottom_nav.dart';
import 'package:google_fonts/google_fonts.dart';
import '../style/color.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackAccent,
      body: Center(
        child: Stack(children: [
          Container(
            margin: const EdgeInsets.only(top: 100),
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/car_main.png",
                    ),
                    fit: BoxFit.cover)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/logo/main_logo.png",
                        scale: 1.5,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Premium auto \nrepair shop.",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Guaranteed quality.",
                        style: GoogleFonts.poppins(
                            color: subText,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      splashColor: blueAccent,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => BottomNav())));
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "GET STARTED",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: mainColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
