import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void communicateMe(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'وسائل التواصل مع مطور التطبيق',
          style: TextStyle(
            fontFamily: 'ElMessiri',
            fontSize: 17,
            color: Colors.blue,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/image/me.jpg'),
                    radius: 28,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'Mohammad Awd',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ElMessiri',
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              splashColor: Colors.yellow,
              onTap: () => _launchUrl('mailto:mahometawad@gmail.com',
                  'لا يمكن فتح البريد الإلكتروني', context),
              child: const ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.red,
                  size: 28,
                ),
                title: Text('Mail للتواصل عبر الـ ',
                    style: TextStyle(
                      fontFamily: 'ElMessiri',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    )),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              splashColor: Colors.yellow,
              onTap: () => _launchUrl('https://wa.me/qr/IOR42CPASHPXD1',
                  'لا يمكن فتح تطبيق الواتساب', context),
              child: const ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.green,
                  size: 28,
                ),
                title: Text('للتواصل عبر الواتساب',
                    style: TextStyle(
                      fontFamily: 'ElMessiri',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    )),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              splashColor: Colors.yellow,
              onTap: () => _launchUrl(
                  'https://www.facebook.com/profile.php?id=100018268714697&locale=ar_AR',
                  'لا يمكن فتح الفيس بوك',
                  context),
              child: const ListTile(
                leading: Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 45, 49, 240),
                  size: 28,
                ),
                title: Text('للتواصل عبر الفيس بوك',
                    style: TextStyle(
                      fontFamily: 'ElMessiri',
                      color: Color.fromARGB(255, 45, 49, 240),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              splashColor: Colors.yellow,
              onTap: () => _launchUrl('https://t.me/MoDev_apps_3',
                  'لا يمكن فتح التليجرام', context),
              child: const ListTile(
                leading: Icon(
                  Icons.telegram,
                  color: Color.fromARGB(255, 33, 115, 182),
                  size: 28,
                ),
                title: Text('تطبيقاتنا',
                    style: TextStyle(
                      fontFamily: 'ElMessiri',
                      color: Color.fromARGB(255, 33, 115, 182),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                Text(
                  'By :',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ElMessiri',
                    wordSpacing: 2,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/image/logo.png'),
                      width: 30,
                      height: 30,
                    ),
                    Text(
                      'M',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlayfairDisplay',
                        wordSpacing: 5,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      'oDe',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlayfairDisplay',
                        wordSpacing: 2,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'v',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlayfairDisplay',
                        wordSpacing: 2,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'إغلاق',
              style: TextStyle(
                  fontFamily: 'ElMessiri',
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      );
    },
  );
}

Future<void> _launchUrl(
    String url, String errorMessage, BuildContext context) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.blue,
      content: Row(
        children: [
          Icon(
            Icons.error_sharp,
            size: 20,
            color: Colors.red,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            errorMessage,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ],
      ),
    ));
  }
}
