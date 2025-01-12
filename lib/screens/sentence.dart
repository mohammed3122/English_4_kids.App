import 'package:flutter/material.dart';
import 'package:learn_english/components/for_sound.dart';
import 'package:learn_english/components/item.dart';

// ignore: must_be_immutable
class Sentences_Screen extends StatelessWidget {
  Sentences_Screen({super.key});

  List<Item> colorsItems = [
    Item(
      itemEn: 'Red',
      itemAr: 'أحمر',
      itemSound: 'sounds/colors_sounds/red.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'Yellow',
      itemAr: 'أصفر',
      itemSound: 'sounds/colors_sounds/yellow.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'Green',
      itemAr: 'أخضر',
      itemSound: 'sounds/colors_sounds/green.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'White',
      itemAr: 'أبيض',
      itemSound: 'sounds/colors_sounds/white.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'Gray',
      itemAr: 'رمادي',
      itemSound: 'sounds/colors_sounds/gray.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'Dusty Yellow',
      itemAr: 'أصفر غامق',
      itemSound: 'sounds/colors_sounds/dusty_yellow.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'Brown',
      itemAr: 'بُنِّي',
      itemSound: 'sounds/colors_sounds/brown.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'Black',
      itemAr: 'أسمَر',
      itemSound: 'sounds/colors_sounds/black.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        // عند الضغط على زر الرجوع
        Item_Sound.stopSound(); // إيقاف الصوت
        Item_Sound.disposeAudioPlayer(); // تنظيف الموارد
        return true; // السماح بالخروج من الشاشة
      },
      child: Scaffold(
        backgroundColor: Color(0xff7ba7ca),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Sentences',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri',
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: colorsItems.length,
          itemBuilder: (context, index) {
            return colorsItems[index];
          },
        ),
      ),
    );
  }
}
