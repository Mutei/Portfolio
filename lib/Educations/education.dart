import 'package:flutter/material.dart';
import 'website.dart';
import 'package:portfolio/constant.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);
  static String Id = 'education';

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education>
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
    Website website = new Website();
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
                        Icons.star,
                        color: purpleTexts.value,
                        size: 70,
                      ),
                      Text(
                        "Education",
                        style:
                            TextStyle(color: purpleTexts.value, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Bachelor in Software Engineering",
                    style: TextStyle(
                      color: purpleTexts.value,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Eastern Mediterranean University",
                  style: TextStyle(
                    color: purpleTexts.value,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato2',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    website.launch();
                  },
                  child: Card(
                    color: purpleTexts.value,
                    elevation: 4.0, // Adjust the card's elevation for shadow
                    child: ListTile(
                      leading: Icon(
                        Icons.laptop_chromebook_outlined,
                        color: iconColors.value,
                      ),
                      title: Text(
                        'Website',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          color: whiteTexts.value,
                        ),
                      ),
                      subtitle: Text(
                        'EMU Website',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato2',
                          letterSpacing: 1,
                          color: whiteTexts.value,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
