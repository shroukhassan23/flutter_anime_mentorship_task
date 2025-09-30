import 'package:anime_flutter_project/presentation/third_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //   backgroundColor: const Color.fromARGB(223, 35, 1, 65),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 1000, // أو أي ارتفاع مناسب للمحتوى
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(223, 35, 1, 65),
                          Color.fromARGB(255, 20, 0, 40),
                          Color.fromARGB(223, 35, 1, 65),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/bigAnime.png",
                    width: double.infinity,
                    height: 500,
                    fit: BoxFit.cover,
                  ),

                  Positioned(
                    top: 400,
                    right: 70,
                    child: Image.asset("assets/images/Demon.png"),
                  ),

                  Positioned(
                    bottom: 350,

                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50, right: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(158, 141, 137, 152),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "Dark Fantasy",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(158, 141, 137, 152),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                child: Text(
                                  "Action",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(158, 141, 137, 152),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                child: Text(
                                  "Adventure",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 300,
                    left: 10,
                    right: 10,
                    child: Column(
                      children: [
                        Divider(
                          color: Color.fromARGB(255, 114, 114, 122),
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/icons/eye.png",
                                width: 20,
                                height: 20,
                              ),
                              Text(
                                "2.3M Views",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(width: 4),
                              Image.asset(
                                "assets/icons/Clapping.png",
                                width: 20,
                                height: 20,
                              ),

                              Text(
                                "2K Clap",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(width: 4),
                              Image.asset(
                                "assets/images/movie.png",
                                width: 20,
                                height: 20,
                              ),

                              Text(
                                "4 Seasons",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 114, 114, 122),
                          height: 1,
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/fire.png",
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(width: 30),
                          SizedBox(
                            width: 250,
                            child: Text(
                              "Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(color: Color(0xff16103C)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset("assets/icons/solar.png"),
                                  Text(
                                    "Preview",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(158, 141, 137, 152),
                                ),
                              ),
                            ),
                            //  SizedBox(width: 30),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ThirdScreen();
                                    },
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Image.asset("assets/icons/eye.png"),
                                  SizedBox(width: 10),
                                  Text(
                                    "Watch Now",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xff6758FE),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
