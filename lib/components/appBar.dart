import 'package:biriyaniwebpage/components/appButton.dart';
import 'package:biriyaniwebpage/constants.dart';
import 'package:biriyaniwebpage/services/launchURL.dart';
import 'package:flutter/material.dart';

class BiryaniBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.30),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 20),
          Image.asset(
            "images/logo.png",
            alignment: Alignment.topRight,
            height: 30,
          ),
          MenuItems(label: "BIRYANI 🔥"),
          Spacer(),
          MenuItems(
            label: "About",
            url: "https://en.wikipedia.org/wiki/Biryani",
          ),
          MenuItems(
            label: "Recipe",
            url: "https://www.youtube.com/watch?v=PmqdA05OXuI",
          ),
          AppButton(
            buttonText: "Lets Eat Biryani",
            onTap: () {
              launchURL('https://www.google.com/search?q=biryani+near+me');
            },
          ),
        ],
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  final String label;
  final String url;
  MenuItems({@required this.label, this.url});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 30),
      onPressed: () {
        launchURL(url);
      },
      child: Text(
        label,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: kButtonColor),
      ),
    );
  }
}
