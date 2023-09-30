import 'package:flutter/material.dart';
import 'constant.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);
  static String Id = 'skills';

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  late Animation iconColors;
  late Animation purpleTexts;
  late Animation whiteTexts;

  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(begin: kBlackColor, end: kScaffoldBackGroundColor)
        .animate(controller);
    iconColors =
        ColorTween(begin: kBlackColor, end: kWhitesColor).animate(controller);
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
                    color: Color(0xFF0A0E21),
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
                        Icons.work_history_sharp,
                        color: purpleTexts.value,
                        size: 70,
                      ),
                      Text(
                        "Skills",
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
                      'Time Management',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
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
                      'OOP in Java',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
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
                      'Flutter Framework',
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
                Card(
                  color: purpleTexts.value,
                  elevation: 4.0, // Adjust the card's elevation for shadow
                  child: ListTile(
                    leading: Icon(
                      Icons.work,
                      color: iconColors.value,
                    ),
                    title: Text(
                      'Basic Python/C',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
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
                      'UI/UX Design',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
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
                      'WordPress',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
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
