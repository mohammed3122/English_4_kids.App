import 'package:flutter/material.dart';
import 'package:learn_english/components/category.dart';
import 'package:learn_english/components/communicate.dart';
import 'package:learn_english/screens/colors_screen.dart';
import 'package:learn_english/screens/family_screen.dart';
import 'package:learn_english/screens/numbers_screen.dart';
import 'package:learn_english/screens/sentence.dart';
import 'package:learn_english/screens/verbs_screen.dart';
import 'package:learn_english/screens/words_screen.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 113, 159, 178),
      appBar: AppBar(
        // shape:Border.(symmetric())
        backgroundColor: Colors.blue,
        title: Align(
          alignment: Alignment.topRight,
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
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
                  color: Colors.white,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource('sounds/me.mp3'));
                      communicateMe(context);
                    },
                    icon: Icon(
                      Icons.developer_mode,
                      size: 25,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                'تعلم الإنجليزية',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: 'ElMessiri',
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, indx) {
          return Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                Category(
                  categoryEnName: 'Numbers',
                  categoryNameColor: Color.fromARGB(255, 29, 121, 163),
                  categoryArName: 'الأرقام',
                  categoyColor: Color.fromARGB(255, 255, 223, 79),
                  categoryImage:
                      'assets/image/category_icons/numbers_icon.jpeg',
                  navi: () {
                    final player = AudioPlayer();
                    player.play(
                        AssetSource('sounds/category_sounds/numbers.mp3'));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NumbersScreen();
                    }));
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Category(
                  categoryEnName: 'Family ',
                  categoryNameColor: Color.fromARGB(255, 128, 0, 128),
                  categoryArName: 'العائلة',
                  categoyColor: Color.fromARGB(255, 255, 182, 193),
                  categoryImage: 'assets/image/category_icons/family_icon.jpeg',
                  navi: () {
                    final player = AudioPlayer();
                    player
                        .play(AssetSource('sounds/category_sounds/family.mp3'));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FamilyScreen();
                    }));
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Category(
                  categoryEnName: 'Colors',
                  categoryNameColor: Colors.white,
                  categoryArName: 'الألوان',
                  categoyColor: Color.fromARGB(255, 218, 112, 214),
                  categoryImage: 'assets/image/category_icons/colors_icon.png',
                  navi: () {
                    final player = AudioPlayer();
                    player
                        .play(AssetSource('sounds/category_sounds/colors.mp3'));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ColorsScreen();
                    }));
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Category(
                  categoryEnName: 'Words',
                  categoryNameColor: Colors.black,
                  categoryArName: 'كلمات',
                  categoyColor: Color.fromARGB(255, 135, 206, 250),
                  categoryImage: 'assets/image/category_icons/words_icon.jpeg',
                  navi: () {
                    final player = AudioPlayer();
                    player
                        .play(AssetSource('sounds/category_sounds/words.mp3'));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return WordsScreen();
                    }));
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Category(
                  categoryEnName: 'Verbs',
                  categoryNameColor: Color.fromARGB(255, 0, 0, 139),
                  categoryArName: 'أفعال',
                  categoyColor: Color.fromARGB(255, 255, 165, 0),
                  categoryImage: 'assets/image/category_icons/verbs_icon.png',
                  navi: () {
                    final player = AudioPlayer();
                    player
                        .play(AssetSource('sounds/category_sounds/verbs.mp3'));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return VerbsScreen();
                    }));
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Category(
                  categoryEnName: 'Sentence',
                  categoryNameColor: Color.fromARGB(255, 0, 100, 0),
                  categoryArName: 'جمل يومية',
                  categoyColor: Color.fromARGB(255, 144, 238, 144),
                  categoryImage: 'assets/image/category_icons/sentence.jpeg',
                  navi: () {
                    final player = AudioPlayer();
                    player.play(
                        AssetSource('sounds/category_sounds/sentences.mp3'));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Sentences_Screen();
                    }));
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}
