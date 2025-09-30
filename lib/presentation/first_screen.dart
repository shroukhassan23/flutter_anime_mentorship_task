// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:anime_flutter_project/presentation/second_screen.dart';
import 'package:anime_flutter_project/presentation/widgets/anime_char_circle.dart';
import 'package:anime_flutter_project/presentation/widgets/anime_characters.dart';
import 'package:anime_flutter_project/presentation/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 233, 236),
        body: ListView(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/images/Star.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, bottom: 25),
                        child: Text(
                          "Where Anime Comes Alive",
                          style: TextStyle(
                            color: Color(0XFF18153F),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      ScrollingFilters(),
                      SizedBox(height: 30),
                      AnimeCharactersList(),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          child: Text(
                            "Top Characters",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            AnimeCharactersInCircles(
                              imagePath: "assets/images/Ellipse1.png",
                              characterName: "Gon Freecss",
                              characterWork: "Hunter x Hunter",
                            ),
                            AnimeCharactersInCircles(
                              imagePath: "assets/images/Ellipse2.png",
                              characterName: "Naruto Uzumaki",
                              characterWork: "Naruto",
                            ),
                            AnimeCharactersInCircles(
                              imagePath: "assets/images/Ellipse3.png",
                              characterName: "Luffy",
                              characterWork: "One Piece",
                            ),
                            AnimeCharactersInCircles(
                              imagePath: "assets/images/conan.jpg",
                              characterName: "Conan Edogawa",
                              characterWork: "Detective Conan",
                            ),
                            AnimeCharactersInCircles(
                              imagePath: "assets/images/anime.jpg",
                              characterName: "Goku",
                              characterWork: "Dragon Bali",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }
}

class AnimeCharactersList extends StatelessWidget {
  const AnimeCharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AnimeCharacters(
            imagePath: "assets/images/anime1.png",
            characterName: 'Detective Conan',
            characterWork: 'Mystery',
          ),
          AnimeCharacters(
            imagePath: "assets/images/anime2.png",
            characterName: 'Hunter x Hunter',
            characterWork: 'Adventure',
          ),

          AnimeCharacters(
            imagePath: "assets/images/anime3.jpg",
            characterName: 'Dragon BallZ',
            characterWork: 'Action',
          ),
        ],
      ),
    );
  }
}

class ScrollingFilters extends StatelessWidget {
  const ScrollingFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: listofButtons(
              color: Color(0XFF5436F8),
              text: "All",
              textColor: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: listofButtons(
              color: Color.fromARGB(255, 255, 255, 255),
              text: "Popular",
              textColor: Color(0XFF5436F8),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: listofButtons(
              color: Color.fromARGB(255, 255, 255, 255),
              text: "Trending",
              textColor: Color(0XFF5436F8),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: listofButtons(
              color: Color.fromARGB(255, 255, 255, 255),
              text: "New Releases",
              textColor: Color(0XFF5436F8),
            ),
          ),
          listofButtons(
            color: Color.fromARGB(255, 255, 255, 255),
            text: "Top Rated",
            textColor: Color(0XFF5436F8),
          ),
          SizedBox(width: 4),
          listofButtons(
            color: Color.fromARGB(255, 255, 255, 255),
            text: "Upcoming",
            textColor: Color(0XFF5436F8),
          ),
        ],
      ),
    );
  }
}

class listofButtons extends StatelessWidget {
  Color? color;
  String text;
  Color? textColor;
  listofButtons({
    super.key,
    this.color,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color, // Color(0XFF5436F8),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        child: Text(text, style: TextStyle(color: textColor)),
      ),
    );
  }
}
