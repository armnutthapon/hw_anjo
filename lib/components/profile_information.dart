import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_Information extends StatefulWidget {
  final String topic;
  final String data;

  const Profile_Information({Key? key, required this.topic, required this.data})
      : super(key: key);

  @override
  _Profile_InformationState createState() => _Profile_InformationState();
}

class _Profile_InformationState extends State<Profile_Information> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      title: Text(
        widget.topic,
        style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
            fontFamily: 'Mitr'),
      ),
      trailing: Text(
        widget.data,
        style: TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.w300,
            fontFamily: 'Mitr'),
      ),
    );
  }
}

class Toggle_Switch extends StatefulWidget {
  const Toggle_Switch({Key? key}) : super(key: key);

  @override
  Toggle_SwitchState createState() => Toggle_SwitchState();
}

class Toggle_SwitchState extends State<Toggle_Switch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      title: Text(
        "อนุญาติให้เพิ่มเพื่อนด้วย ID",
        style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
            fontFamily: 'Mitr'),
      ),
      trailing: CupertinoSwitch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
        activeColor: Colors.pink,
      ),
    );
  }
}
