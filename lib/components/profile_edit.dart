// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile_Edit extends StatefulWidget {
  final String topic;
  final TextEditingController data;
  const Profile_Edit({Key? key, required this.topic, required this.data})
      : super(key: key);

  @override
  _Profile_EditState createState() => _Profile_EditState();
}

class _Profile_EditState extends State<Profile_Edit> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListTile(
      dense: true,
      title: Text(
        widget.topic,
        style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
            fontFamily: 'Mitr'),
      ),
      trailing: Container(
        width: 150,
        child: Row(
          children: [
            Expanded(
                child: TextFormField(
              controller: widget.data,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Mitr'),
              textAlign: TextAlign.right,
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    left: 15,
                    bottom: 11,
                    top: 11,
                  ),
                  hintText: ""),
            )),
          ],
        ),
      ),
    );
  }
}
