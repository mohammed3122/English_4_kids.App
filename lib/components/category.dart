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
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 7,
              blurStyle: BlurStyle.outer,
              color: categoryNameColor,
            )
          ],
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
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  color: Color(0xff719fb2),
                  blurRadius: 2,
                  spreadRadius: 9,
                  blurStyle: BlurStyle.inner,
                )
              ]),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(categoryImage),
              ),
            )
          ],
        ),
      ),
    );
  }
}
