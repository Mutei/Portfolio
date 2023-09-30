import 'package:flutter/material.dart';
import 'package:portfolio/Educations/education.dart';
import 'package:portfolio/experience.dart';
import 'package:portfolio/welcome_Screen.dart';
import 'main_screen.dart';
import 'Profiles/profile.dart';
import 'skill.dart';
import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: kSecondPrimary,
          scaffoldBackgroundColor: kScaffoldBackGroundColor,
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kMainColor),
        ),
        initialRoute: WelcomeScreen.Id,
        routes: {
          WelcomeScreen.Id: (context) => (WelcomeScreen()),
          MainScreen.Id: (context) => (MainScreen()),
          Profile.Id: (context) => (Profile()),
          Education.Id: (context) => (Education()),
          Experience.Id: (context) => (Experience()),
          Skills.Id: (context) => (Skills()),
        });
  }
}
