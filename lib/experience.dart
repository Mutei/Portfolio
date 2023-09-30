import 'package:flutter/material.dart';
import 'constant.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);
  static String Id = 'experience';

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  late Animation iconColors;
  late Animation purpleTexts;
  late Animation whiteTexts;

  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    animation = ColorTween(begin: kBlackColor, end: kScaffoldBackGroundColor)
        .animate(controller);
    iconColors =
        ColorTween(begin: kBlackColor, end: kGreyColor).animate(controller);
    purpleTexts =
        ColorTween(begin: kBlackColor, end: kMainColor).animate(controller);
    whiteTexts =
        ColorTween(begin: kBlackColor, end: kWhiteColor).animate(controller);

    controller.forward();
    controller.addListener(() {
      setState(() {
        print(animation.value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      appBar: AppBar(
        backgroundColor: animation.value,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 70,
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kSecondPrimary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  width: 150,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.work,
                        color: purpleTexts.value,
                        size: 70,
                      ),
                      Text(
                        "Experience",
                        style:
                            TextStyle(color: purpleTexts.value, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: purpleTexts.value,
                  elevation: 4.0, // Adjust the card's elevation for shadow
                  child: ListTile(
                    leading: Icon(
                      Icons.work,
                      color: iconColors.value,
                    ),
                    title: Text(
                      'Project-1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: whiteTexts.value,
                      ),
                    ),
                    subtitle: Text(
                      'Volunteer Management System',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato2',
                        letterSpacing: 1,
                        color: whiteTexts.value,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: purpleTexts.value,
                  elevation: 4.0, // Adjust the card's elevation for shadow
                  child: ListTile(
                    leading: Icon(
                      Icons.work,
                      color: iconColors.value,
                    ),
                    title: Text(
                      'Project-2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: whiteTexts.value,
                      ),
                    ),
                    subtitle: Text(
                      'Dorm Management System',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato2',
                        letterSpacing: 1,
                        color: whiteTexts.value,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: purpleTexts.value,
                  elevation: 4.0, // Adjust the card's elevation for shadow
                  child: ListTile(
                    leading: Icon(
                      Icons.work,
                      color: iconColors.value,
                    ),
                    title: Text(
                      'Project-3',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: whiteTexts.value,
                      ),
                    ),
                    subtitle: Text(
                      'Covid-19 Tracking System (Grad Project)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato2',
                        letterSpacing: 1,
                        color: whiteTexts.value,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
