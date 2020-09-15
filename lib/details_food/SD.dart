import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class ServeDenton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 350.0,
            decoration: BoxDecoration(
              color: Colors.red[200],
              image: DecorationImage(
                  image: AssetImage("assets/images/foodumm.png"),
                  fit: BoxFit.fitWidth),
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
                      Navigator.pop(context);
                    }),
              ],
            ),
          ),
          //Title
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Serve Denton",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    //Our Mission
                    InfoCard(
                      cardheight: 150.0,
                      title: "Our Mission",
                      text:
                          "Serve Denton partners with nonprofits to help make their services more accessible for people in need.",
                    ),
                    SizedBox(height: 15),
                    //The Problem
                    InfoCard(
                      cardheight: 185.0,
                      title: "The Problem",
                      text:
                          "When a family falls on hard times, finding help can be overwhelming. And when nonprofits are spread out, "
                          "it can be difficult to find the organizations that can help, let alone find the transportation."
                          "Serve Denton was created as a solution.",
                    ),
                    SizedBox(height: 15),
                    //Our Soultion
                    InfoCard(
                      cardheight: 225.0,
                      title: "Our Soultion",
                      text:
                          "Our solution is to have multiple nonprofit agencies on the same campus, so those in need only have to visit one location to "
                          "receive the help they need, making social services more accessible.\n"
                          "When nonprofits are officing in the same building, this increases their collaboration and communication, "
                          "which helps our neighbors get back on their feet more quickly.",
                    ),
                    SizedBox(height: 15),
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
