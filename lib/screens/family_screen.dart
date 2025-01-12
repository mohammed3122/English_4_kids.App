import 'package:flutter/material.dart';
import 'package:learn_english/components/for_sound.dart';
import 'package:learn_english/components/item.dart';

// ignore: must_be_immutable
class FamilyScreen extends StatelessWidget {
  FamilyScreen({super.key});

  List<Item> familyItems = [
    Item(
      itemPicture: 'assets/image/family_members/family_father.png',
      itemEn: 'Father',
      itemAr: 'أب',
      itemSound: 'sounds/family_sounds/father.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_mother.png',
      itemEn: 'Mother',
      itemAr: 'أُم',
      itemSound: 'sounds/family_sounds/mother.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_grandfather.png',
      itemEn: 'Grand Father',
      itemAr: 'جَد',
      itemSound: 'sounds/family_sounds/grand_father.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_grandmother.png',
      itemEn: 'Grand Mother',
      itemAr: 'جَدَّة',
      itemSound: 'sounds/family_sounds/grand_mother.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_son.png',
      itemEn: 'Son',
      itemAr: 'ابن',
      itemSound: 'sounds/family_sounds/son.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_daughter.png',
      itemEn: 'Daughter',
      itemAr: 'ابنة',
      itemSound: 'sounds/family_sounds/daughter.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_older_brother.png',
      itemEn: 'Older Brother',
      itemAr: 'الأخ الأكبر',
      itemSound: 'sounds/family_sounds/older_brother.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_older_sister.png',
      itemEn: 'Older Sister',
      itemAr: 'الأخت الكُبري',
      itemSound: 'sounds/family_sounds/older_sister.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_younger_brother.png',
      itemEn: 'Younger Brother',
      itemAr: 'الأخ الأصغر',
      itemSound: 'sounds/family_sounds/younger_brother.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_younger_sister.png',
      itemEn: 'Younger Sister',
      itemAr: 'الأخت الصُّغري',
      itemSound: 'sounds/family_sounds/younger_sister.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_father.png',
      itemEn: 'Uncle',
      itemAr: 'الخال أو العم',
      itemSound: 'sounds/family_sounds/uncle.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_mother.png',
      itemEn: 'Aunt',
      itemAr: 'الخالة أو العَمَّة',
      itemSound: 'sounds/family_sounds/aunt.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
    ),
    Item(
      itemPicture: 'assets/image/family_members/family_son.png',
      itemEn: 'Cousin',
      itemAr: 'ابن الخال أو ابن العم',
      itemSound: 'sounds/family_sounds/cousin.mp3',
      itemColor: Color(0xffffb6c1),
      itemPictureColor: Color.fromARGB(255, 128, 0, 128),
      itemNameColor: Color.fromARGB(255, 128, 0, 128),
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
            'Family',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri',
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: familyItems.length,
          itemBuilder: (context, index) {
            return familyItems[index];
          },
        ),
      ),
    );
  }
}
