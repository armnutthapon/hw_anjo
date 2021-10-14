// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:anjo_homework/components/profile_edit.dart';
import 'package:anjo_homework/components/profile_information.dart';
import 'package:anjo_homework/components/profile_topic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  final TextEditingController name;
  final TextEditingController user_id;
  final TextEditingController about_me;
  final TextEditingController work;
  final TextEditingController education;
  final String date;
  final String month;
  final String year;
  final String dob;

  // final String dob;

  const Profile({
    Key? key,
    required this.name,
    required this.user_id,
    // required this.dob,
    required this.date,
    required this.month,
    required this.year,
    required this.about_me,
    required this.work,
    required this.education,
    required this.dob,
    isSwitched,
  }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ข้อมูลโปรไฟล์",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "บันทึก",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ))
        ],
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        backgroundColor: Colors.white, //You can make this transparent
        elevation: 0.0, //No shadow
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Profile_Topic(
              topic: "โปรไฟล์",
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.white,
              child: Column(
                children: [
                  Profile_Edit(
                    topic: "คำอธิบายเกี่ยวกับตัวฉัน",
                    data: widget.about_me,
                  ),
                  Divider(),
                  Profile_Edit(
                    topic: "อาชีพ",
                    data: widget.work,
                  ),
                  Divider(),
                  Profile_Edit(
                    topic: "สถานศึกษา",
                    data: widget.education,
                  ),
                ],
              ),
            ),
            Profile_Topic(
              topic: "เพศ",
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.white,
              child: Column(
                children: [
                  Profile_Information(
                    topic: "เพศกำเนิด",
                    data: "ชาย",
                  ),
                  Divider(),
                  Profile_Information(
                    topic: "เพศของฉัน",
                    data: "ผู้ชาย | สนใจเพศตรงข้าม",
                  ),
                ],
              ),
            ),
            Profile_Topic(
              topic: "เมืองเกิด",
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.white,
              child: Column(
                children: [
                  Profile_Information(
                    topic: "ประเทศ",
                    data: "ไทย",
                  ),
                  Divider(),
                  Profile_Information(
                    topic: "เมือง",
                    data: "ภูเก็ต",
                  ),
                ],
              ),
            ),
            Profile_Topic(
              topic: "ข้อมูลทั่วไป",
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.white,
              child: Column(
                children: [
                  Profile_Edit(
                    topic: "ชื่อของฉัน",
                    data: widget.name,
                  ),
                  Divider(),
                  Profile_Edit(
                    topic: "ANJO ID",
                    data: widget.user_id,
                  ),
                  Divider(),
                  Toggle_Switch()
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.white,
              child: Column(
                children: [
                  Profile_Information(topic: "วันเกิด", data: "${widget.dob}"),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade100,
    );
  }
}
