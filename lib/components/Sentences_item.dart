import 'package:flutter/material.dart';
import 'package:learn_english/components/for_sound.dart';

// ignore: must_be_immutable
class SentencesItem extends StatelessWidget {
  SentencesItem({
    this.itemPicture,
    required this.itemEn,
    required this.itemAr,
    required this.itemSound,
    this.itemColor,
    this.itemPictureColor,
    this.itemNameColor,
  });

  String? itemPicture;
  String itemEn;
  String itemAr;
  String itemSound;
  Color? itemColor;
  Color? itemPictureColor;
  Color? itemNameColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 6,
            blurStyle: BlurStyle.inner,
            color: Colors.white,
          )
        ],
        color: Color.fromARGB(255, 144, 238, 144),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          itemPicture == null
              ? SizedBox(
                  width: 30,
                )
              : Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 205, 147),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 6,
                        blurStyle: BlurStyle.inner,
                        color: Colors.white,
                      )
                    ],
                    // color: itemColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: itemPictureColor,
                    backgroundImage: AssetImage(
                      itemPicture!,
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemEn,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 100, 0),
                    fontSize: 17.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ElMessiri',
                  ),
                ),
                Text(
                  itemAr,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 109, 121, 122),
                    fontSize: 17.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ElMessiri',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              width: 30,
              height: 30,
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
              child: IconButton(
                onPressed: () {
                  Item_Sound.playSound(itemSound);
                },
                icon: Icon(
                  Icons.play_circle_fill_rounded,
                  size: 25,
                  color: const Color.fromARGB(255, 7, 236, 15),
                ),
                constraints: BoxConstraints(),
                padding: EdgeInsets.zero, // لإزالة المسافة الداخلية الافتراضية
              ),
            ),
          ),
        ],
      ),
    );
  }
}
