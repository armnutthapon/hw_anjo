// ignore_for_file: prefer_const_constructors

import 'package:anjo_homework/screen/second.dart';
import 'package:flutter/material.dart';

class Button_Continue extends StatefulWidget {
  final String button_text;
  final Widget page;

  const Button_Continue(
      {Key? key, required this.button_text, required this.page})
      : super(key: key);

  @override
  _Button_ContinueState createState() => _Button_ContinueState();
}

class _Button_ContinueState extends State<Button_Continue> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 50,
      width: size.width * 0.9,
      child: ElevatedButton(
        onPressed: () {
          var route = new MaterialPageRoute(
              builder: (BuildContext context) => widget.page);
          Navigator.of(context).push(route);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => widget.page),
          // );
        },
        child: Text(
          widget.button_text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // <-- Radius
            ),
            elevation: 0),
      ),
    );
  }
}