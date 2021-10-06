// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anjo_homework/components/about_me.dart';
import 'package:anjo_homework/components/button_continue.dart';
import 'package:anjo_homework/components/gender.dart';
import 'package:anjo_homework/components/input_from.dart';
import 'package:anjo_homework/components/input_from_nodescription.dart';
import 'package:anjo_homework/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Second extends StatefulWidget {
  final String name;
  final String user_id;
  final bool isSwitched;
  final String dob;

  const Second({
    Key? key,
    required this.name,
    required this.user_id,
    required this.dob,
    required this.isSwitched,
  }) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var about_me = TextEditingController();
  var work = TextEditingController();
  var education = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ข้อมูลของฉัน",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
              fontFamily: 'Mitr'),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white, //You can make this transparent
        elevation: 0.0, //No shadow
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 5),
                  height: size.height * 0.2,
                  color: Colors.white,
                  child: MyGender()),
              Interest_Gender(),
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Input_From(
                      input: about_me,
                      topic: "คำอธิบายเกี่ยวกับตัวฉัน",
                      hint: "เกี่ยวกับฉัน",
                      description:
                          "เพิ่มคำอธิบายเพิ่มเติมเกี่ยวกับตัวคุณเพื่อแนะนำตัวกับคนอื่นๆใน ANJO เพื่อเพิ่มโอกาสในการแมตช์",
                      icon: Icon(null),
                      error: 'กรุณากรอกข้อมูล',
                    ),
                    Input_From_NoDescription(
                      input: work,
                      topic: "อาชีพ",
                      hint: "อาชีพของฉัน",
                      error: 'กรุณากรอกข้อมูลอาชีพ',
                    ),
                    Input_From_NoDescription(
                      input: education,
                      topic: "สถานศึกษา",
                      hint: "เคยศึกษาที่",
                      error: 'กรุณากรอกข้อมูลสถานศึกษา',
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20, bottom: 65),
                        child: SizedBox(
                          height: 50,
                          width: size.width * 0.9,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                var route = new MaterialPageRoute(
                                    builder: (BuildContext context) => Profile(
                                        name: '${widget.name}',
                                        user_id: '${widget.user_id}',
                                        dob: '${widget.dob}',
                                        about_me: about_me.text,
                                        work: work.text,
                                        education: education.text,
                                        isSwitched: false
                                        // name: widget.name,
                                        ));
                                Navigator.of(context).push(route);
                              }
                            },
                            child: Text(
                              "ดำเนินการต่อ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(20), // <-- Radius
                                ),
                                elevation: 0),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
