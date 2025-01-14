import 'package:flutter/material.dart';
import 'package:learn_english/components/for_sound.dart';

class info extends StatelessWidget {
  const info({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              itemEn,
              style: TextStyle(
                color: itemNameColor,
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
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 3,
                  blurStyle: BlurStyle.inner,
                  color: Colors.white,
                )
              ],
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 41, 119, 184),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  Item_Sound.playSound(itemSound);
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
    );
  }
}
