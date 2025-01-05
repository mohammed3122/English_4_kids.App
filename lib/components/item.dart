import 'package:flutter/material.dart';
import 'package:learn_english/components/for_sound.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  Item({
    required this.itemPicture,
    required this.itemEn,
    required this.itemAr,
    required this.itemSound,
  });

  String itemPicture;
  String itemEn;
  String itemAr;
  String itemSound;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 223, 79),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: const Color.fromARGB(255, 211, 205, 147),
              backgroundImage: AssetImage(
                itemPicture,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Text(
                  itemEn,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 25, 25, 112),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ElMessiri',
                  ),
                ),
                Text(
                  itemAr,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 109, 121, 122),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ElMessiri',
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 10,
                    spreadRadius: 2,
                    blurStyle: BlurStyle.outer,
                  )
                ],
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 41, 119, 184),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    playSound(itemSound);
                  },
                  icon: Icon(
                    Icons.play_circle_fill_rounded,
                    size: 30,
                    color: const Color.fromARGB(255, 7, 236, 15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
