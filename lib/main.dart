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
        mainAxisAlignment: MainAxisAlignment.center,
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
                              fontSize:
                                  SizeConfig.blockScreenHorizontal! * kHeading1,
                              color: kDarkColor),
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
                          fontSize: SizeConfig.blockScreenHorizontal! * kBody2,
                          color: kParagraphColor),
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
          ),
          Container(
            color: kBackgroundColor,
            height: 28,
          ),
          Container(
            color: kBackgroundColor,
            child: SizedBox(
              height: 98,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        left: index == 0 ? 24 : 0,
                        right: index == 10 - 1 ? 24 : 8),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              maxRadius: 36,
                              backgroundColor: kWhiteColor,
                              foregroundImage: AssetImage('images/google.png'),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: IntrinsicWidth(
                                  child: Text(
                                    '12',
                                    style: kJakartaBodyBold.copyWith(
                                        fontSize:
                                            SizeConfig.blockScreenHorizontal! *
                                                kBody2,
                                        color: kWhiteColor),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Google',
                          maxLines: 1,
                          style: kJakartaBodyMedium.copyWith(
                            fontSize:
                                SizeConfig.blockScreenHorizontal! * kBody1,
                            color: kParagraphColor,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            height: 48,
            color: kBackgroundColor,
          ),
          Container(
            height: 30,
            transform: Matrix4.translationValues(0, -24, 0),
            //i think this makes it be on top, not sure though
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                )),
          )
        ],
      ),
    );
  }
}
