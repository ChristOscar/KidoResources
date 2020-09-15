import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class ExploriumMuseum2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 350.0,
            decoration: BoxDecoration(
              color: Colors.lightBlue[200],
              image: DecorationImage(
                  image: AssetImage("assets/images/meditation_bg.png"),
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
                      "Explorium Children's Museum",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
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
                      cardheight: 170.0,
                      title: "Our Goal",
                      text:
                          "We want to provide opportunities for children to experience the wonder "
                          "and excitement of science, technology, engineering, arts, and math through "
                          "hands-on exhibits, multimedia, and content-rich programs that encourage "
                          "exploration, engage the learner, and ultimately educate the child.",
                    ),
                    SizedBox(height: 15),
                    //Eligability
                    InfoCard(
                      cardheight: 100.0,
                      title: "Eligability",
                      text: "Adult must be accompanied by a child "
                          "children must be accompanied by an adult."
                          "There is no charge for infants being worn or in carriers.",
                    ),
                    SizedBox(height: 15),
                    //Schedule
                    InfoCard(
                      cardheight: 130.0,
                      title: "Schedule",
                      text: "Closed: Monday-Wednesday; "
                          "Thursday-Friday Open 10:00AM-12:00PM (Members Only) "
                          "Saturday 2:00PM-4:00PM",
                    ),
                    SizedBox(height: 15),
                    //Location
                    InfoCard(
                      cardheight: 85.0,
                      title: "Location",
                      text: " 5800 I-35, Denton, Texas 76207",
                    ),
                    SizedBox(height: 15),
                    //Contact Information
                    InfoCard(
                      cardheight: 85.0,
                      title: "Contact Information",
                      text: "Phone Number: 940-320-5444\n"
                          "Email: info@exploriumdenton.org",
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
