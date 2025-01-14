import 'package:flutter/material.dart';
import 'package:learn_english/components/Sentences_item.dart';
import 'package:learn_english/components/for_sound.dart';

// ignore: must_be_immutable
class Sentences_Screen extends StatelessWidget {
  Sentences_Screen({super.key});

  List<Widget> colorsItems = [
    SentencesItem(
      itemEn: 'How are you?',
      itemAr: 'كيف حالك؟',
      itemSound: 'sounds/questions_sounds/howAreYou.mp3',
    ),
    SentencesItem(
      itemEn: 'I am fine, thank you!',
      itemAr: '!أنا بخير، شكراً',
      itemSound: 'sounds/ansers_sounds/anHowAreYou.mp3',
      itemPicture: 'assets/image/anser_sentences/good.jpg',
    ),
    Divider(
      color: Color(0xff2977b8),
      thickness: 1.5,
      endIndent: 10,
      indent: 10,
    ),
    SentencesItem(
      itemEn: 'What is your name?',
      itemAr: 'ما اسمُك؟',
      itemSound: 'sounds/questions_sounds/whatisname.mp3',
    ),
    SentencesItem(
      itemEn: 'My name is Omar! ',
      itemAr: '! اسمي عمر!',
      itemSound: 'sounds/ansers_sounds/anseraName.mp3',
      itemPicture: 'assets/image/anser_sentences/omar.jpg',
    ),
    Divider(
      color: Color(0xff2977b8),
      thickness: 1.5,
      endIndent: 10,
      indent: 10,
    ),
    SentencesItem(
      itemEn: 'Where do you live?',
      itemAr: 'أين تعيش ؟',
      itemSound: 'sounds/questions_sounds/whereDolive.mp3',
    ),
    SentencesItem(
        itemEn: 'I live in Mansoura! ',
        itemAr: '! أنا أعيش في المنصورة',
        itemSound: 'sounds/ansers_sounds/anserLive.mp3',
        itemPicture: 'assets/image/anser_sentences/live.jpg'),
    Divider(
      color: Color(0xff2977b8),
      thickness: 1.5,
      endIndent: 10,
      indent: 10,
    ),
    SentencesItem(
      itemEn: 'What do you like to do ?',
      itemAr: 'انت بتحب تعمل ايه؟',
      itemSound: 'sounds/questions_sounds/whatDolikeDo.mp3',
    ),
    SentencesItem(
      itemEn: 'I like to read books!',
      itemAr: '! بحب أقرأ كتب',
      // تعديل الصوت فيها
      itemSound: 'sounds/ansers_sounds/anserYouLikeDo.mp3',
      itemPicture: 'assets/image/anser_sentences/do.jpg',
    ),
    Divider(
      color: Color(0xff2977b8),
      thickness: 1.5,
      endIndent: 10,
      indent: 10,
    ),
    SentencesItem(
      itemEn: 'What is your favorite color?',
      itemAr: ' ما هو لونك المفضل؟',
      itemSound: 'sounds/questions_sounds/whatFvColor.mp3',
    ),
    SentencesItem(
      itemEn: 'My favorite color is green!',
      itemAr: '! لوني المفضل هو الأخضر',
      itemSound: 'sounds/ansers_sounds/anserColor.mp3',
      itemPicture: 'assets/image/anser_sentences/green.jpg',
    ),
    Divider(
      color: Color(0xff2977b8),
      thickness: 1.5,
      endIndent: 10,
      indent: 10,
    ),
    SentencesItem(
      itemEn: 'How old are you?',
      itemAr: 'عندك كام سنة؟',
      itemSound: 'sounds/questions_sounds/howOld.mp3',
    ),
    SentencesItem(
        itemEn: 'I am 10 years old !',
        itemAr: '! أنا عندي 10 سنين',
        itemSound: 'sounds/ansers_sounds/anserOld.mp3',
        itemPicture: 'assets/image/anser_sentences/birth.jpg'),
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
