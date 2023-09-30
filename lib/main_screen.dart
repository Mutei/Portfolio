import 'package:flutter/material.dart';
import 'package:portfolio/skill.dart';
import 'Profiles/profile.dart';
import 'Educations/education.dart';
import 'experience.dart';
import 'constant.dart';

class MainScreen extends StatefulWidget {
  static String Id = 'mainScreen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  late Animation appBar;
  late Animation buttons;
  late Animation textLogo;

  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(begin: kBlackColor, end: kScaffoldBackGroundColor)
        .animate(controller);
    appBar =
        ColorTween(begin: kBlackColor, end: kSecondPrimary).animate(controller);
    buttons =
        ColorTween(begin: kBlackColor, end: kSecondPrimary).animate(controller);
    textLogo =
        ColorTween(begin: kBlackColor, end: kMainColor).animate(controller);
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
      body: OrientationBuilder(builder: (context, orientation) {
        return SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Welcome to my Portfolio',
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the rows horizontally
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Profile.Id);
                      },
                      child: ReusableColumn(
                        iconData: Icons.person, // Pass an IconData directly
                        title: 'Profile', // Pass a String directly
                        colour: textLogo.value,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Education.Id);
                      },
                      child: ReusableColumn(
                        iconData: Icons.grade, // Pass an IconData directly
                        title: 'Education', // Pass a String directly
                        colour: textLogo.value,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the rows horizontally
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Experience.Id);
                      },
                      child: ReusableColumn(
                        iconData: Icons.work, // Pass an IconData directly
                        title: 'Experience', // Pass a String directly
                        colour: textLogo.value,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Skills.Id);
                      },
                      child: ReusableColumn(
                        iconData: Icons
                            .work_history_sharp, // Pass an IconData directly
                        title: 'Skills', // Pass a String directly
                        colour: textLogo.value,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the rows horizontally
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                  ],
                ),
                // Repeat the Row widgets as needed
              ],
            ),
          ),
        );
      }),
    );
  }
}

class ReusableColumn extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color colour;
  const ReusableColumn({
    super.key,
    required this.iconData,
    required this.title,
    required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF0A0E21),
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            width: 150,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  color: colour,
                  size: 70,
                ),
                Text(
                  title,
                  style: TextStyle(color: colour, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
