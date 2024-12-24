import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harsh_portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
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
                    onPressed: () async => await launchUrl(Uri.parse(
                        "https://www.instagram.com/khare7233/?hl=en")),
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset("assets/works.jpg",
                      filterQuality: FilterQuality.high, fit: BoxFit.cover),
                ),
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SansBold("Works", 35.0),
                  SizedBox(
                    height: 20.0,
                  ),
                  AnimatedCard(
                    imagePath: "assets/portfolio.png",
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300.0,
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  SansBold("Portfolio", 20.0),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans("Deployed on Android, iOS and Web, the portfolio project was truly an achievement. I used Flutter for beautiful and responsive UI and Firebase for the back-end.", 15.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
