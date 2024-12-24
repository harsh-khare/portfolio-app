import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:harsh_portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {

  urlLauncher(String imPath, String url){
    return IconButton(
      onPressed: () async{
        await launchUrl(Uri.parse(url));
      },
      icon: SvgPicture.asset(
        imPath,
        color: Colors.black,
        width: 35,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
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
                urlLauncher("assets/instagram.svg", "https://www.instagram.com/khare7233/?hl=en"),
                urlLauncher("assets/linkedin.svg", "https://www.linkedin.com/in/harsh-khare-1a2498246/"),
                urlLauncher("assets/github.png", "https://github.com/Shunk-code"),
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
              TabsWeb(title: "Home", route: '/',),
              Spacer(),
              TabsWeb(title: "About", route: '/about',),
              Spacer(),
              TabsWeb(title: "Blog", route: '/blog',),
              Spacer(),
              TabsWeb(title: "Contact", route: '/contact',),
              Spacer(),
              TabsWeb(title: "Works", route: '/works',),
              Spacer(),
            ],
          )),
      body: ListView(
        children: [
          //First Section
          Container(
            height: heightDevice - 56,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: SansBold("Hello I'm", 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SansBold("Harsh Khare", 55),
                      Sans("Flutter Developer", 30),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.email),
                          SizedBox(
                            width: 20,
                          ),
                          Sans("harsh270302@gmail.com", 15)
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.call),
                          SizedBox(
                            width: 20,
                          ),
                          Sans("7355285488", 15)
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.location_city),
                          SizedBox(
                            width: 20,
                          ),
                          Sans("Jhansi, Uttar Pradesh", 15)
                        ],
                      ),
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
                        backgroundImage:
                            AssetImage("assets/harsh_photo_circular.png"),
                      ),
                    ),
                  ),
                ]),
          ),
          //  Second Section
          Container(
            height: heightDevice / 1.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Web.jpg",
                  height: heightDevice / 1.7,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SansBold("About Me", 45.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Hello, I'm Harsh Khare, I specialise in flutter development",
                        20.0),
                    Sans(
                        "I strive to ensure astounding performance with state of ",
                        20.0),
                    Sans("the art security for Android, iOS, Web and Windows",
                        20.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Flutter", 20.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Firebase", 20.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Android", 20.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("iOS", 20.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("DSA", 20.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("SQL", 20.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          // Third Section
          Container(
            height: heightDevice / 1.3,
            width: widthDevice,
            child: Column(

              children: [
                SansBold("What I do?", 45.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                      imagePath: "assets/webL.png",
                      text: "Web Development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCard(
                      imagePath: "assets/app25.jpg",
                      text: "App Development",
                    ),
                    AnimatedCard(
                      imagePath: "firebase.png",
                      text: "Back-End Development",
                      reverse: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Fourth Section
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold("Contact Me", 40.0),
                SizedBox(
                  height: 70.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          Containerwidth: 350.0,
                          text: "First Name",
                          hintText: "Please type your first name",
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                          Containerwidth: 350.0,
                          text: "Email",
                          hintText: "Please enter your email address",
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          Containerwidth: 350.0,
                          text: "Last Name",
                          hintText: "Please type your last name",
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                          Containerwidth: 350.0,
                          text: "Phone Number",
                          hintText: "Please type your phn number",
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextForm(
                  text: "Message",
                  Containerwidth: widthDevice / 1.5,
                  hintText: "Please type your message",
                  maxLine: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                      elevation: 20.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 60.0,
                      minWidth: 200.0,
                      color: Colors.tealAccent,
                      child: SansBold("Submit", 20.0),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}
