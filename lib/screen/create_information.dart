import 'package:anjo_homework/components/button_continue.dart';
import 'package:anjo_homework/components/gender.dart';
import 'package:anjo_homework/components/input_from.dart';
import 'package:anjo_homework/components/input_from_nodescription.dart';
import 'package:anjo_homework/screen/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Create_Information extends StatefulWidget {
  final bool isSwitched;
  final String date;
  final String month;
  final String year;

  final TextEditingController name;
  final TextEditingController user_id;

  // final String dob;

  const Create_Information({
    Key? key,
    required this.name,
    required this.user_id,
    required this.date,
    required this.month,
    required this.year,
    required this.isSwitched,
  }) : super(key: key);

  @override
  _Create_InformationState createState() => _Create_InformationState();
}

class _Create_InformationState extends State<Create_Information> {
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
                      maxLength: 500,
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
                            child: Button_Continue(
                                button_text: "ดำเนินการต่อ",
                                page: Profile(
                                    name: widget.name,
                                    user_id: widget.user_id,
                                    // dob: widget.dob,
                                    date: widget.date,
                                    month: widget.month,
                                    year: widget.year,
                                    about_me: about_me,
                                    work: work,
                                    education: education,
                                    isSwitched: false),
                                formkey: _formkey))),
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
