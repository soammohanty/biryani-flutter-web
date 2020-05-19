import 'package:biriyaniwebpage/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;

  AppButton({this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
        color: kPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        onPressed: onTap,
        child: Text(
          buttonText,
          style: TextStyle(
            color: kDarkButton,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
