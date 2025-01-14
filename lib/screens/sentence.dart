import 'package:flutter/material.dart';
import 'package:learn_english/components/for_sound.dart';
import 'package:learn_english/components/item.dart';

// ignore: must_be_immutable
class Sentences_Screen extends StatelessWidget {
  Sentences_Screen({super.key});

  List<Item> colorsItems = [
    Item(
      itemEn: 'How are you?',
      itemAr: 'كيف حالك؟',
      itemSound: 'sounds/colors_sounds/red.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'I am good, thank you!',
      itemAr: '!أنا بخير، شكراً',
      itemSound: 'sounds/colors_sounds/yellow.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'Where do you live?',
      itemAr: 'أين تعيش ؟',
      itemSound: 'sounds/colors_sounds/green.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'I live in Mansoura! ',
      itemAr: '! أنا أعيش في المنصورة',
      itemSound: 'sounds/colors_sounds/white.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'What do you like to do ?',
      itemAr: 'انت بتحب تعمل ايه؟',
      itemSound: 'sounds/colors_sounds/gray.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'I like to play football and read books!',
      itemAr: '! بحب ألعب كورة وأقرأ كتب',
      itemSound: 'sounds/colors_sounds/dusty_yellow.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'What is your favorite color?',
      itemAr: ' ما هو لونك المفضل؟',
      itemSound: 'sounds/colors_sounds/brown.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'My favorite color is green!',
      itemAr: '! لوني المفضل هو الأخضر',
      itemSound: 'sounds/colors_sounds/black.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'How old are you?',
      itemAr: 'عندك كام سنة؟',
      itemSound: 'sounds/colors_sounds/black.mp3',
      itemColor: Color(0xffda70d6),
      itemNameColor: Colors.white,
    ),
    Item(
      itemEn: 'I am 10 years old !',
      itemAr: '! عندي 10 سنين',
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
