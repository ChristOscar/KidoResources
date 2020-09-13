import 'package:flutter/material.dart';
import 'package:kidoresources/constants.dart';

class FirstRefugeMinistries2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 175,
            decoration: BoxDecoration(
              color: Colors.red[200],
              image: DecorationImage(
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                  fit: BoxFit.fitWidth),
            ),
          ),
          //Filling Void
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "First Refuge Ministries",
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
              child: SingleChildScrollView(),
            ),
          ),
        ],
      ),
    );
  }
}
