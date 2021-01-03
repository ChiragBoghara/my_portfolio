import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/404.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.breeSerifTextTheme(),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xff041F60),
      ),
    );
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _launch('https://wa.me/${'+'} + ${919909150454}?text=Hello');
        },
        backgroundColor: Color(0xff2CEEF0),
        child: FaIcon(
          FontAwesomeIcons.whatsapp,
          size: 30.0,
          color: Colors.black,
        ),
      ),
      backgroundColor: Color(0xff041F60),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0xff041F60),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.only(right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    color: Color(0xff2CEEF0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Resume',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.download_rounded,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Scrollbar(
                thickness: 3.0,
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Lottie.asset(
                          'images/img2.json',
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Column(
                          children: [
                            Text(
                              'Hi ! I am,',
                              style: TextStyle(
                                color: Color(0xff2CEEF0),
                                fontSize: 25.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Chirag Boghara',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Flutter Developer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100.0,
                        ),
                        Text(
                          'A passionate Flutter developer from India ...!!!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 100.0,
                        ),
                        Text(
                          'About Me',
                          style: TextStyle(
                            color: Color(0xff2CEEF0),
                            fontSize: 40.0,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        WidgetCircularAnimator(
                          outerColor: Colors.white,
                          innerColor: Color(0xff2CEEF0),
                          outerAnimation: Curves.linear,
                          reverse: true,
                          child: Align(
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              radius: 100.0,
                              backgroundImage: AssetImage(
                                'images/avatar2.jpg',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          'I am Chirag Boghara, Bsc.IT student and developer...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 7.0, left: 20.0, right: 20.0),
                          child: Text(
                            'I am pursuing Bsc.IT from VNSGU. I have completed my schooling from Ashadeep Vidhyalaya.Skilled in C, C++, Dart, HTML, CSS, and right now working on many projects based on my most favourite Flutter(builded more than 20 projects on it)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          'Ask me about Flutter or any tech related stuff...😀',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          'Skills',
                          style: TextStyle(
                            color: Color(0xff2CEEF0),
                            fontSize: 35.0,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Wrap(
                          spacing: 30.0,
                          runSpacing: 20.0,
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            getSkill('images/c.webp'),
                            getSkill('images/cpp.png'),
                            getSkill('images/html.png'),
                            getSkill('images/css.png'),
                            getSkill('images/dart.png'),
                            getSkill('images/firebase.png'),
                            getSkill('images/studio.png'),
                            getSkill('images/git.png'),
                          ],
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          'Contact me',
                          style: TextStyle(
                            color: Color(0xff2CEEF0),
                            fontSize: 35.0,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Wrap(
                          children: [
                            getContact(
                              'Phone',
                              Icon(
                                FontAwesomeIcons.phoneAlt,
                                color: Colors.green,
                              ),
                              'tel: 9909150454',
                            ),
                            getContact(
                              'E-mail',
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              'mailto: chiragbogharait@gmail.com',
                            ),
                            getContact(
                              'Instagram',
                              Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.deepOrangeAccent,
                              ),
                              'https://www.instagram.com/chirag_boghra_/',
                            ),
                            getContact(
                              'FaceBook',
                              Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.lightBlueAccent,
                              ),
                              'https://www.facebook.com/chirag.boghra.3/',
                            ),
                            getContact(
                                'SMS',
                                Icon(
                                  Icons.message,
                                  color: Colors.greenAccent,
                                ),
                                'sms: 9909150454'),
                            getContact(
                              'Github',
                              Icon(
                                FontAwesomeIcons.github,
                                color: Colors.black,
                              ),
                              'https://github.com/ChiragBoghara',
                            ),
                            getContact(
                              'Error',
                              Icon(
                                Icons.error_outline,
                                color: Colors.red,
                              ),
                              'error',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Text(
                          'Made with  ❤  by Chirag',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getSkill(String img) {
    return Material(
      shape: CircleBorder(),
      elevation: 50.0,
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black12,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image(
            image: AssetImage(
              img,
            ),
          ),
        ),
      ),
    );
  }

  Widget getContact(String string, Widget iconData, String URL) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton.icon(
        color: Colors.blue.shade900,
        onPressed: () {
          _launch(URL);
        },
        icon: iconData,
        label: Text(
          string,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        shape: StadiumBorder(),
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 10.0,
          bottom: 10.0,
        ),
      ),
    );
  }

  _launch(String string) async {
    try {
      if (await canLaunch(string)) {
        await launch(string);
      } else {
        throw "can't launch";
      }
    } catch (e) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page404(),
        ),
      );
    }
  }
}
