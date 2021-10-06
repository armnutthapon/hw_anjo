// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Input_From extends StatefulWidget {
  final String topic;
  final String hint;
  final String description;
  final Icon icon;
  final TextEditingController input;

  const Input_From(
      {Key? key,
      required this.topic,
      required this.hint,
      required this.description,
      required this.icon,
      required this.input})
      : super(key: key);

  @override
  _Input_FromState createState() => _Input_FromState();
}

class _Input_FromState extends State<Input_From> {
  @override
  int textLength = 0;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  widget.topic,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Mitr'),
                ))
          ],
        ),
        Container(
            // color: Colors.red,
            margin: EdgeInsets.fromLTRB(15, 10, 15, 5),
            height: size.height * 0.07,
            child: TextField(
                controller: widget.input,
                decoration: InputDecoration(
                  // suffixIcon: Icon(
                  //   textLength > 5 ? Icons.check_circle_rounded : null,
                  // ),
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  hintText: widget.hint,
                ),
                onChanged: (text) {
                  setState(() {
                    textLength = text.length;
                  });
                })),
        Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Text(
                  widget.description,
                  // "นี่คือชื่อที่จะปรากฏบนโปรไฟล์ของคุณ และจะไม่สามารถเปลี่ยนแปลงภายหลังได้",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}

class Input_From_NoDescription extends StatefulWidget {
  final String topic;
  final String hint;
  final Icon icon;
  final TextEditingController input;
  const Input_From_NoDescription(
      {Key? key,
      required this.topic,
      required this.hint,
      required this.icon,
      required this.input})
      : super(key: key);

  @override
  _Input_From_NoDescriptionState createState() =>
      _Input_From_NoDescriptionState();
}

class _Input_From_NoDescriptionState extends State<Input_From_NoDescription> {
  @override
  int textLength = 0;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 15, top: 3),
                child: Text(
                  widget.topic,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Mitr'),
                ))
          ],
        ),
        Container(
            // color: Colors.red,
            margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
            height: size.height * 0.07,
            child: TextField(
                controller: widget.input,
                decoration: InputDecoration(
                  // suffixIcon: Icon(
                  //   textLength > 5 ? Icons.check_circle_rounded : null,
                  // ),
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  hintText: widget.hint,
                ),
                onChanged: (text) {
                  setState(() {
                    textLength = text.length;
                  });
                })),
      ],
    );
  }
}
