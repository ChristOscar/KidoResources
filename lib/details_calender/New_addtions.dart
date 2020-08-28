import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/screens/CalenderScreen.dart';

class NewAddtions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.lightGreen[300],
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
                        "New Addtions",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 35,
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
                      height: 30,
                    ),
                    // Special Made Widgets
                    // Big Brothers Big Sisters
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
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
                              SvgPicture.asset(
                                "assets/icons/Booklover4.svg",
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Denton City County Day School",
                                      // ignore: deprecated_member_use
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                        "With the recent addtion of Denton City County Day School, we can proudly announce our involment within the school system."
                                        "With this addition we are now able to spread our resources and ensure that parents are learning about our app."
                                        "Thank you to everyone that has helped us accomplish this goal.")
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
