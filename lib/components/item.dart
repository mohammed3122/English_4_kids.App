import 'package:flutter/material.dart';
import 'package:learn_english/components/for_sound.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  Item({
    this.itemPicture,
    required this.itemEn,
    required this.itemAr,
    required this.itemSound,
    required this.itemColor,
    this.itemPictureColor,
    required this.itemNameColor,
  });

  String? itemPicture;
  String itemEn;
  String itemAr;
  String itemSound;
  Color itemColor;
  Color? itemPictureColor;
  Color itemNameColor;

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
        color: itemColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ],
      ),
    );
  }
}
