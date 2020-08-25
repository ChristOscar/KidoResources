import 'package:flutter/material.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/screens/CalenderScreen.dart';
import 'package:kidoresources/screens/HomeScreen.dart';
import 'package:kidoresources/widgets/Navigation_bar.dart';

class ServeDenton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom Nav bar: Beginning
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        height: 70,
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavigation(
              title: "Home",
              svgSrc: "assets/icons/Icon_home.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }),
                );
              },
              isActive: false,
            ),
            BottomNavigation(
              title: "Today",
              svgSrc: "assets/icons/Icon_calendar.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return CalenderScreen();
                  }),
                );
              },
              isActive: false,
            ),
          ],
        ),
      ),
      // Bottom Nav bar: Ending

      body: Stack(
        children: [
          Container(
            height: 175,
            decoration: BoxDecoration(
              color: Colors.red[200],
              image: DecorationImage(
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          //Backbutton
          SafeArea(
            child: Column(
              children: <Widget>[
                //Back Button
                IconButton(
                    icon: Icon(Icons.chevron_left),
                    alignment: Alignment(-1, -1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return CalenderScreen();
                        }),
                      );
                    }),
              ],
            ),
          ),
          //Title
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Title
                    //Soon to be changed to be dynamic with the days
                    Center(
                      child: Text(
                        "Serve Denton",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 45,
                    ),
                    // Special Made Widgets
                    // Our Mission
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 17,
                            spreadRadius: -23,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        "Our Mission",
                                        // ignore: deprecated_member_use
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    Text(
                                        "Serve Denton partners with nonprofits to help make their services more accessible for people in need.")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    //Serve Deton Logo
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      height: 165,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Serve_Denton.png"),
                          fit: BoxFit.fitHeight,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    // Think about it
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 17,
                            spreadRadius: -23,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        "Think About It",
                                        // ignore: deprecated_member_use
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // The Problem
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      height: 185,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 17,
                            spreadRadius: -23,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        "The Problem",
                                        // ignore: deprecated_member_use
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    Text(
                                        "When a family falls on hard times, finding help can be overwhelming. And when nonprofits are spread out, "
                                        "it can be difficult to find the organizations that can help, let alone find the transportation."),
                                    Text(
                                      "Serve Denton was created as a solution.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Our Soulution

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      height: 225,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 17,
                            spreadRadius: -23,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        "Our Soultion",
                                        // ignore: deprecated_member_use
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    Text(
                                        "Our solution is to have multiple nonprofit agencies on the same campus, so those in need only have to visit one location to "
                                        "receive the help they need, making social services more accessible.\n"),
                                    Text(
                                      "When nonprofits are officing in the same building, this increases their collaboration and communication, "
                                      "which helps our neighbors get back on their feet more quickly.",
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
