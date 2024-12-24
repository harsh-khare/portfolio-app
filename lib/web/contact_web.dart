import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harsh_portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              backgroundImage: AssetImage("assets/harsh_photo_circular.png"),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold("Harsh Khare", 30.0),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () async {
                      await launchUrl(Uri.parse(
                          "https://www.instagram.com/khare7233/?hl=en"));
                    },
                    icon: SvgPicture.asset(
                      "assets/instagram.svg",
                      color: Colors.black,
                      width: 35.0,
                    ))
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25.0,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(title: "Home", route: '/'),
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(
                    title: "Works",
                    route: '/works',
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(title: "Blog", route: '/blog'),
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(title: "About", route: '/about'),
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(
                    title: "Contact",
                    route: '/contact',
                  ),
                  Spacer(
                    flex: 3,
                  )
                ],
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 30.0),
              SansBold("Contact me", 40.0),
              SizedBox(height: 20.0),
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
      ),
    );
  }
}
