import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  String selectedPlan = 'monthly';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDEE3ff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 800, // 👈 خلي مساحة كافية للـ Stack
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset("assets/images/Star2.png"),
                  Positioned(
                    right: 0,
                    top: 300,
                    child: Image.asset("assets/images/Star3.png"),
                  ),
                  Positioned(
                    top: 80,
                    left: 90,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Upgrade Plan',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 24, 21, 63),
                          ),
                        ),
                        SizedBox(width: 50),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.cancel, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 80,
                    top: 110,
                    child: Image.asset("assets/images/Rocket.png"),
                  ),
                  Positioned(
                    right: 10,
                    top: 300,
                    child: Column(
                      children: [
                        Text(
                          "Seamless Anime\n Experience, Ad-Free.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Enjoy unlimited anime streaming without\n interruptions.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffAEADB5),
                          ),
                        ),
                        SizedBox(height: 20),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 342,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xff18153F),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 108,
                                        height: 108,
                                        child: Image.asset(
                                          "assets/images/folder.png",
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Monthly",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromARGB(
                                                255,
                                                255,
                                                255,
                                                255,
                                              ),
                                            ),
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              text: "\$5 USD",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                  255,
                                                  255,
                                                  255,
                                                  255,
                                                ),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: "/Month\n",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromARGB(
                                                      255,
                                                      164,
                                                      154,
                                                      216,
                                                    ),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "Include Family Sharing",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromARGB(
                                                      255,
                                                      164,
                                                      154,
                                                      216,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // Radio Button في أعلى يمين الـ container
                                Positioned(
                                  top: 10,
                                  right: 15,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPlan = 'annually';
                                      });
                                    },
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: selectedPlan == 'annually'
                                            ? Color(0xff5436F8)
                                            : Colors.transparent,
                                        border: Border.all(
                                          color: selectedPlan == 'annually'
                                              ? Color(0xff5436F8)
                                              : Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      child: selectedPlan == 'annually'
                                          ? Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 16,
                                            )
                                          : null,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Stack(
                              children: [
                                Container(
                                  width: 342,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 108,
                                        height: 108,
                                        child: Image.asset(
                                          "assets/images/folder.png",
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Annually",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff18153F),
                                            ),
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              text: "\$50 USD",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff18153F),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: "/Year\n",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromARGB(
                                                      255,
                                                      164,
                                                      154,
                                                      216,
                                                    ),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "Include Family Sharing",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromARGB(
                                                      255,
                                                      164,
                                                      154,
                                                      216,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // Radio Button في أعلى يمين الـ container
                                Positioned(
                                  top: 10,
                                  right: 15,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPlan = 'annually';
                                      });
                                    },
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: selectedPlan == 'annually'
                                            ? Color(0xff5436F8)
                                            : Colors.transparent,
                                        border: Border.all(
                                          color: selectedPlan == 'annually'
                                              ? Color(0xff5436F8)
                                              : Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      child: selectedPlan == 'annually'
                                          ? Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 16,
                                            )
                                          : null,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xff5436F8),
                              ),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                  horizontal: 130,
                                  vertical: 15,
                                ), // زيادة العرض والارتفاع
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
