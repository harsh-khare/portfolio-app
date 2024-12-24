import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harsh_portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
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
                    "assets/works.jpg",
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
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 35.0,
                  ),
                  SansBold("Works", 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCard(
                        imagePath: "portfolio.png",
                        height: 200.0,
                        width: 200.0,
                      ),
                      SizedBox(
                        width: widthDevice / 3,
                        child: Column(
                          children: [
                            SansBold("Portfolio", 30.0),
                            SizedBox(
                              height: 15.0,
                            ),
                            Sans("Deployed on Android, iOS and Web, the portfolio project was truly an achievement. I used Flutter for beautiful and responsive UI and Firebase for the back-end.", 15.0),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
