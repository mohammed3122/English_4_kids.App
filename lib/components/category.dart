import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({
    super.key,
    required this.categoryEnName,
    required this.categoryArName,
    required this.categoyColor,
    required this.categoryImage,
    required this.categoryNameColor,
    required this.navi,
  });

  String categoryEnName;
  String categoryArName;
  Color categoyColor;
  String categoryImage;
  Color categoryNameColor;
  VoidCallback navi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navi,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: categoyColor,
          borderRadius: BorderRadius.circular(50),
        ),
        height: 80,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categoryEnName,
                    style: TextStyle(
                      color: categoryNameColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ElMessiri',
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    categoryArName,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 45, 49, 50),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ElMessiri',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                radius: 32,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(categoryImage),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
