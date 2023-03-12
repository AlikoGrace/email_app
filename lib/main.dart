import 'app_styles.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kWhiteColor,
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            color: kBackgroundColor,
            padding: EdgeInsets.only(top: 54, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'All Inboxes',
                          style: kJakartaHeading1.copyWith(
                              fontSize: SizeConfig.blockScreenHorizontal! *
                                  kHeading1),
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: SizeConfig.blockScreenHorizontal! * kHeading3,
                        )
                      ],
                    ),
                    Text(
                      'Total 2500 Messages, 3 Unread',
                      style: kJakartaBodyMedium.copyWith(
                          fontSize: SizeConfig.blockScreenHorizontal! * kBody2),
                    ),
                  ],
                ),
                CircleAvatar(
                  maxRadius: 26,
                  backgroundColor: kSecondaryColor,
                  foregroundImage: AssetImage('images/my_profle.png'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
