// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:anime_flutter_project/presentation/first_screen.dart';

class AnimeCharacters extends StatelessWidget {
  String imagePath;
  final String characterName;
  final String characterWork;
  AnimeCharacters({
    Key? key,
    required this.imagePath,
    required this.characterName,
    required this.characterWork,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimeCharImage(
      imagePath: imagePath,
      characterName: characterName,
      characterWork: characterWork,
    );
  }
}

class AnimeCharImage extends StatelessWidget {
  const AnimeCharImage({
    super.key,
    required this.imagePath,
    required this.characterName,
    required this.characterWork,
  });

  final String imagePath;
  final String characterName;
  final String characterWork;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Container(
            width: 184,
            height: 245,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover, // عشان تملى المساحة
                    width: 184,
                    height: 245,
                  ),
                ),
                RatingContainer(),
              ],
            ),
          ),
        ),

        charNameAndWork(
          characterName: characterName,
          characterWork: characterWork,
        ),
      ],
    );
  }
}

class charNameAndWork extends StatelessWidget {
  String characterName;
  String characterWork;
  charNameAndWork({
    Key? key,
    required this.characterName,
    required this.characterWork,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          characterName,
          style: TextStyle(
            color: Color(0XFF18153F),
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          characterWork,
          style: TextStyle(
            color: Color(0XFFA9A9A9),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class RatingContainer extends StatelessWidget {
  const RatingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
        child: Container(
          width: 41,
          height: 18,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.star, color: Color(0XFF5436F8), size: 15),
              ),

              Text(
                "5.0",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
