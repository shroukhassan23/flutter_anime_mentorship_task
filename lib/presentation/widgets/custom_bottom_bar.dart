import 'package:anime_flutter_project/presentation/second_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 4),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SecondScreen();
                  },
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Color(0xff5436F8)),
            ),
            child: Row(
              children: [
                Image.asset("assets/icons/home-2.png"),
                SizedBox(width: 4),
                Text(
                  "Home",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 4),
          Image.asset("assets/icons/books.png"),
          SizedBox(width: 4),
          Image.asset("assets/icons/search-normal.png"),
          SizedBox(width: 4),
          Image.asset("assets/icons/internet.png"),
          SizedBox(width: 4),
          Image.asset("assets/icons/setting.png"),
          SizedBox(width: 4),
        ],
      ),
    );
  }
}
