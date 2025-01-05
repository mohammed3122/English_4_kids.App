import 'package:flutter/material.dart';
import 'package:learn_english/components/item.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: [
          SizedBox(height: 10),
          Item(
            itemPicture: 'assets/image/numbers_images/number_one.png',
            itemEn: 'One',
            itemAr: 'واحد',
            itemSound: 'sounds/numbers_sounds/one.mp3',
          ),
          SizedBox(
            height: 10,
          ),
          Item(
            itemPicture: 'assets/image/numbers_images/number_two.png',
            itemEn: 'Two',
            itemAr: 'اثنين',
            itemSound: 'sounds/numbers_sounds/two.mp3',
          ),
          SizedBox(
            height: 10,
          ),
          Item(
            itemPicture: 'assets/image/numbers_images/number_three.png',
            itemEn: 'Three',
            itemAr: 'ثلاثة',
            itemSound: 'sounds/numbers_sounds/three.mp3',
          ),
          SizedBox(
            height: 10,
          ),
          Item(
            itemPicture: 'assets/image/numbers_images/number_four.png',
            itemEn: 'Four',
            itemAr: 'أربعة',
            itemSound: 'sounds/numbers_sounds/four.mp3',
          ),
          SizedBox(
            height: 10,
          ),
          Item(
            itemPicture: 'assets/image/numbers_images/number_five.png',
            itemEn: 'Five',
            itemAr: 'خمسة',
            itemSound: 'sounds/numbers_sounds/five.mp3',
          ),
          SizedBox(
            height: 10,
          ),
          Item(
            itemPicture: 'assets/image/numbers_images/number_six.png',
            itemEn: 'Six',
            itemAr: 'ستة',
            itemSound: 'sounds/numbers_sounds/six.mp3',
          ),
          SizedBox(
            height: 10,
          ),
          Item(
            itemPicture: 'assets/image/numbers_images/number_seven.png',
            itemEn: 'Seven',
            itemAr: 'سبعة',
            itemSound: 'sounds/numbers_sounds/seven.mp3',
          ),
          SizedBox(
            height: 10,
          ),
          Item(
            itemPicture: 'assets/image/numbers_images/number_eight.png',
            itemEn: 'Eight',
            itemAr: 'ثمانية',
            itemSound: 'sounds/numbers_sounds/eight.mp3',
          ),
          SizedBox(
            height: 10,
          ),
          Item(
            itemPicture: 'assets/image/numbers_images/number_nine.png',
            itemEn: 'Nine',
            itemAr: 'تسعة',
            itemSound: 'sounds/numbers_sounds/nine.mp3',
          ),
          SizedBox(
            height: 10,
          ),
          Item(
            itemPicture: 'assets/image/numbers_images/number_ten.png',
            itemEn: 'Ten',
            itemAr: 'عشرة',
            itemSound: 'sounds/numbers_sounds/ten.mp3',
          ),
        ],
      ),
    );
  }
}
