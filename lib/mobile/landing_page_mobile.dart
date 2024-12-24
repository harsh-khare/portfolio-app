import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harsh_portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {

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
    var widthDevice = MediaQuery.of(context).size.width;
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
        body: ListView(
          children: [
            // Intro, First Section
            Padding(
              padding: const EdgeInsets.all( 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 115,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 110,
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage("assets/harsh_photo_circular.png"),
                    ),
                  ),
                  // SizedBox(
                  //   height: 25.0,
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                        child: SansBold("Hello I'm", 15.0),
                      ),
                      SansBold("HARSH KHARE", 40.0),
                      Sans("Flutter Developer", 20.0),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Wrap(
                            direction: Axis.vertical,
                            spacing: 3.0,
                            children: [
                              Icon(Icons.email),
                              Icon(Icons.phone),
                              Icon(Icons.place)
                            ],
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          Wrap(
                            direction: Axis.vertical,
                            spacing: 9.0,
                            children: [
                              Sans("harsh270302@gmail.com", 15.0),
                              Sans("+91 73 55 285488", 15.0),
                              Sans("Jhansi, UP", 15.0)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            // About me, 2nd Section
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
            SizedBox(height: 60.0,),
            // Third Section What I do?
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("What I do?", 35.0),
                AnimatedCard(imagePath: "assets/webL.png", text: "Web Development", width: 300.0),
                SizedBox(height: 35.0),
                AnimatedCard(imagePath: "assets/app25.jpg", reverse: true, text: "Android Development", width: 300.0),
                SizedBox(height: 35.0),
                AnimatedCard(imagePath: "assets/firebase.png", text: "Backend Development", width: 300.0),
                SizedBox(height: 60.0),
              ],
            ),
            //Contact, 4th section
            Wrap(
              runSpacing: 20.0,
              spacing: 20.0,
              alignment: WrapAlignment.center,
              children: [
                SansBold("Contact Me", 35.0),
                TextForm(text: "First Name", Containerwidth: widthDevice/1.4, hintText: "Please type your first name "),
                TextForm(text: "Last Name", Containerwidth: widthDevice/1.4, hintText: "Please type your last name "),
                TextForm(text: "Email", Containerwidth: widthDevice/1.4, hintText: "Please type your email "),
                TextForm(text: "Phone Number", Containerwidth: widthDevice/1.4, hintText: "Please type your phn no. "),
                TextForm(text: "Message", Containerwidth: widthDevice/1.4, hintText: "Message", maxLine: 10,),
                MaterialButton(onPressed: (){
      
                },
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: 60.0,
                  minWidth: widthDevice/2.2,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                )
              ],
            ),
            SizedBox(height: 60.0,),
          ],
        ),
      ),
    );
  }
}
