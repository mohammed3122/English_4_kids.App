import 'package:flutter/material.dart';
import 'package:learn_english/components/for_sound.dart';
import 'package:learn_english/components/item.dart';

// ignore: must_be_immutable
class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});

  List<Item> numbersItems = [
    Item(
      itemPicture: 'assets/image/numbers_images/number_one.png',
      itemColor: Color.fromARGB(255, 255, 223, 79),
      itemEn: 'One',
      itemAr: 'واحد',
      itemSound: 'sounds/numbers_sounds/one.mp3',
      itemPictureColor: const Color.fromARGB(255, 211, 205, 147),
      itemNameColor: Color.fromARGB(255, 25, 25, 112),
    ),
    Item(
      itemPicture: 'assets/image/numbers_images/number_two.png',
      itemColor: Color.fromARGB(255, 255, 223, 79),
      itemEn: 'Two',
      itemAr: 'اثنين',
      itemSound: 'sounds/numbers_sounds/two.mp3',
      itemPictureColor: const Color.fromARGB(255, 211, 205, 147),
      itemNameColor: Color.fromARGB(255, 25, 25, 112),
    ),
    Item(
      itemPicture: 'assets/image/numbers_images/number_three.png',
      itemColor: Color.fromARGB(255, 255, 223, 79),
      itemEn: 'Three',
      itemAr: 'ثلاثة',
      itemSound: 'sounds/numbers_sounds/three.mp3',
      itemPictureColor: const Color.fromARGB(255, 211, 205, 147),
      itemNameColor: Color.fromARGB(255, 25, 25, 112),
    ),
    Item(
      itemPicture: 'assets/image/numbers_images/number_four.png',
      itemColor: Color.fromARGB(255, 255, 223, 79),
      itemEn: 'Four',
      itemAr: 'أربعة',
      itemSound: 'sounds/numbers_sounds/four.mp3',
      itemPictureColor: const Color.fromARGB(255, 211, 205, 147),
      itemNameColor: Color.fromARGB(255, 25, 25, 112),
    ),
    Item(
      itemPicture: 'assets/image/numbers_images/number_five.png',
      itemColor: Color.fromARGB(255, 255, 223, 79),
      itemEn: 'Five',
      itemAr: 'خمسة',
      itemSound: 'sounds/numbers_sounds/five.mp3',
      itemPictureColor: const Color.fromARGB(255, 211, 205, 147),
      itemNameColor: Color.fromARGB(255, 25, 25, 112),
    ),
    Item(
      itemPicture: 'assets/image/numbers_images/number_six.png',
      itemColor: Color.fromARGB(255, 255, 223, 79),
      itemEn: 'Six',
      itemAr: 'ستة',
      itemSound: 'sounds/numbers_sounds/six.mp3',
      itemPictureColor: const Color.fromARGB(255, 211, 205, 147),
      itemNameColor: Color.fromARGB(255, 25, 25, 112),
    ),
    Item(
      itemPicture: 'assets/image/numbers_images/number_seven.png',
      itemColor: Color.fromARGB(255, 255, 223, 79),
      itemEn: 'Seven',
      itemAr: 'سبعة',
      itemSound: 'sounds/numbers_sounds/seven.mp3',
      itemPictureColor: const Color.fromARGB(255, 211, 205, 147),
      itemNameColor: Color.fromARGB(255, 25, 25, 112),
    ),
    Item(
      itemPicture: 'assets/image/numbers_images/number_eight.png',
      itemNameColor: Color.fromARGB(255, 25, 25, 112),
      itemColor: Color.fromARGB(255, 255, 223, 79),
      itemEn: 'Eight',
      itemAr: 'ثمانية',
      itemSound: 'sounds/numbers_sounds/eight.mp3',
      itemPictureColor: const Color.fromARGB(255, 211, 205, 147),
    ),
    Item(
      itemPicture: 'assets/image/numbers_images/number_nine.png',
      itemColor: Color.fromARGB(255, 255, 223, 79),
      itemEn: 'Nine',
      itemAr: 'تسعة',
      itemSound: 'sounds/numbers_sounds/nine.mp3',
      itemPictureColor: const Color.fromARGB(255, 211, 205, 147),
      itemNameColor: Color.fromARGB(255, 25, 25, 112),
    ),
    Item(
      itemPicture: 'assets/image/numbers_images/number_ten.png',
      itemColor: Color.fromARGB(255, 255, 223, 79),
      itemEn: 'Ten',
      itemAr: 'عشرة',
      itemSound: 'sounds/numbers_sounds/ten.mp3',
      itemPictureColor: const Color.fromARGB(255, 211, 205, 147),
      itemNameColor: Color.fromARGB(255, 25, 25, 112),
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
        backgroundColor: const Color.fromARGB(255, 123, 167, 202),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Numbers',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri',
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: numbersItems.length,
            itemBuilder: (context, index) {
              return numbersItems[index];
            }),
      ),
    );
  }
}
