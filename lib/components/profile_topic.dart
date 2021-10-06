import 'package:flutter/material.dart';

class Profile_Topic extends StatelessWidget {
  final String topic;
  const Profile_Topic({Key? key, required this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.only(left: 15, top: 5),
      child: Text(
        topic,
        style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w400,
            fontFamily: 'Mitr'),
      ),
    );
  }
}
