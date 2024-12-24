import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harsh_portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  urlLauncher(String imPath, String url) {
    return IconButton(
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
      icon: SvgPicture.asset(
        imPath,
        color: Colors.black,
        width: 35,
      ),
    );
  }

  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/harsh_photo_circular.png"),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold("Harsh Khare", 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher("assets/instagram.svg",
                    "https://www.instagram.com/khare7233/?hl=en"),
                urlLauncher("assets/linkedin.svg",
                    "https://www.linkedin.com/in/harsh-khare-1a2498246/"),
                urlLauncher(
                    "assets/github.png", "https://github.com/Shunk-code"),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 25.0, color: Colors.black),
          title: Row(
            children: [
              Spacer(flex: 3),
              TabsWeb(
                title: "Home",
                route: '/',
              ),
              Spacer(),
              TabsWeb(
                title: "About",
                route: '/about',
              ),
              Spacer(),
              TabsWeb(
                title: "Blog",
                route: '/blog',
              ),
              Spacer(),
              TabsWeb(
                title: "Contact",
                route: '/contact',
              ),
              Spacer(),
            ],
          )),
      body: ListView(
        children: [
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About Me", 40.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Hello! I am Harsh Khare I specialise in flutter development. ",
                        15.0),
                    Sans(
                        "I strive to ensure outstanding performance with state of ",
                        15.0),
                    Sans("the art security for Android, iOS and Web", 15.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        tealContainer("Flutter"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Firebase"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("iOS"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Windows"),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.tealAccent,
                  radius: 147,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 143,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/harsh_photo_circular.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/webL.png",
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("Web Development", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "I'm here to build your presence online with state of the art web app",
                        15.0),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("App Development", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Do you want a high performance, responsive app? Don't worry I got ypu covered.",
                        15.0),
                  ],
                ),
              ),
              AnimatedCard(
                imagePath: "assets/app25.jpg",
                height: 250.0,
                width: 250.0,
                reverse: true,
              ),

            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/firebase.png",
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("Back-End Development", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Do you want a scalable and secure database? Let's have a conservation on how I can help you with that.",
                        15.0),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 40.0,),
        ],
      ),
    );
  }
}
