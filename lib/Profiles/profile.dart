import 'package:flutter/material.dart';
import 'email.dart';
import 'phone.dart';
import 'package:portfolio/constant.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  static String Id = 'profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
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
    Email email = new Email();
    Phone phone = new Phone();
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
                Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      color: purpleTexts.value,
                      fontSize: 35,
                      fontFamily: 'Lato2',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/Me.jpg'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Mutei Abuzahra",
                  style: TextStyle(
                    color: purpleTexts.value,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Jordanian",
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
                    email.launch();
                  },
                  child: Card(
                    color: purpleTexts.value,
                    elevation: 4.0, // Adjust the card's elevation for shadow
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: iconColors.value,
                      ),
                      title: Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          color: whiteTexts.value,
                        ),
                      ),
                      subtitle: Text(
                        'Mutea200048@gmail.com',
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
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    phone.launch();
                  },
                  child: Card(
                    color: purpleTexts.value,
                    elevation: 4.0, // Adjust the card's elevation for shadow
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: iconColors.value,
                      ),
                      title: Text(
                        'Phone Number',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          color: whiteTexts.value,
                        ),
                      ),
                      subtitle: Text(
                        '+966508225611',
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
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: purpleTexts.value,
                  elevation: 4.0, // Adjust the card's elevation for shadow
                  child: ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: iconColors.value,
                    ),
                    title: Text(
                      'Saudi Arabia',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: whiteTexts.value,
                      ),
                    ),
                    subtitle: Text(
                      'Riyadh',
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
