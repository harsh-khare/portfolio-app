import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harsh_portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {

  tealContainer(String text){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.tealAccent,
            style: BorderStyle.solid,
            width: 2.0),
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
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.0, color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black)),
                child: Image.asset("assets/harsh_photo_circular.png"),
              ),
            ),
            TabsMobile(text: "Home", route: '/'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Works", route: "/works"),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Blog", route: "/blog"),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Contact", route: "/contact"),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "About", route: "/about"),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://www.instagram.com/khare7233/?hl=en")),
                  icon: SvgPicture.asset(
                    "assets/instagram.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://github.com/Shunk-code")),
                  icon: SvgPicture.asset(
                    "assets/github.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
          body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              children: [
                CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 113.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 110.0,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/harsh_photo_circular.png"),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold("About Me", 35.0),
                      Sans(
                          "Hello, I'm Harsh Khare. I specialise in flutter development. I strive to ensure astounding performance with state of the art security for Android, iOS, Web.",
                          15.0),
                      SizedBox(
                        height: 10.0,
                      ),
                      Wrap(
                        spacing: 7.0,
                        runSpacing: 7.0,
                        children: [
                          tealContainer("Flutter"),
                          tealContainer("Firebase"),
                          tealContainer("Android")
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedCard(imagePath: "assets/webL.png",  width: 200.0),
                    SizedBox(height: 30.0),
                    SansBold("Web Development", 20.0),
                    SizedBox(height: 10.0,),
                  ],
                ),
                Sans("I am here to build presence online with state of the art web apps.", 15.0),
                SizedBox(height: 30.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedCard(imagePath: "assets/app25.jpg",  width: 200.0),
                    SizedBox(height: 30.0),
                    SansBold("App Development", 20.0),
                    SizedBox(height: 10.0,),
                  ],
                ),
                Sans("Do you want your apps to be light-weight and user-friendly? Don't worry! I got you covered.", 15.0),
                SizedBox(height: 30.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedCard(imagePath: "assets/firebase.png", reverse: true,  width: 200.0),
                    SizedBox(height: 30.0),
                    SansBold("Back_end Development", 20.0),
                    SizedBox(height: 10.0,),
                  ],
                ),
                Sans("Do you want your back-end to be highly scalable and secure? Let's have a conversation on how I can help you with that.", 15.0),
                SizedBox(height: 30.0,),

              ],
            ),
          ),
    )
    );
  }
}
