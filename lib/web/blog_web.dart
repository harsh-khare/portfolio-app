import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harsh_portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogWeb extends StatefulWidget {
  const BlogWeb({super.key});

  @override
  State<BlogWeb> createState() => _BlogWebState();
}

class _BlogWebState extends State<BlogWeb> {

  void article() async {
    await FirebaseFirestore.instance
        .collection("article")
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.reversed.forEach((element) {
        print(element.data()["title"]);
      });
    });
  }

  @override
  void initState() {
    article();
    super.initState();
  }

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
          body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return<Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 35.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 7.0),
                    child: AbleCustom(text: "Welcome to my Blog", size: 30.0, fontWeight: FontWeight.bold, color: Colors.white,),
                  ),
                  background: Image.asset("assets/blog.jpg", filterQuality: FilterQuality.high, fit: BoxFit.cover,),
                ),
                expandedHeight: 500.0,
              )
            ];
          },
            body: ListView(
              children: [
                BlogPost(),
                BlogPost(),
                BlogPost(),
                BlogPost(),
              ],
            ),
          ),
        )
    );;
  }
}
class BlogPost extends StatefulWidget {
  const BlogPost({super.key});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {

  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0, right: 70.0, top: 40.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(
              style: BorderStyle.solid, color: Colors.black, width: 1.0,
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: AbleCustom(
                    text: "Who is Keshav?",
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        expand = !expand;
                      });
                    },
                    icon: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Colors.black,
                    ))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Keshav is a data-analyst. He is pursuing mechanical engineering from NIT, Calicut with a current CGPA of 7.4. He is proficient with SQL, Power BI and excel. He has successfully completed his 6 weeks internship at HPCL-Visakh Refinery.",
              style: GoogleFonts.openSans(fontSize: 15.0, ),
              maxLines: expand==true?null:3,
              overflow: expand==true? TextOverflow.visible:TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}