import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:biriyaniwebpage/components/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/biryani.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BiryaniBar(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  Body();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(width: 60.0, height: 100.0),
          Text(
            "BIRYANI IS",
            style: TextStyle(
                fontSize: 43.0,
                color: Colors.brown,
                fontFamily: "monospace",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 30.0, height: 100.0),
          RotateAnimatedTextKit(
              text: ["LOVE", "ALL YOU NEED..."],
              textStyle: TextStyle(
                fontSize: 43.0,
                fontFamily: "monospace",
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
              alignment: AlignmentDirectional.topStart // or Alignment.topLeft
              ),
        ],
      ),
    );
  }
}
