// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anjo_homework/components/about_me.dart';
import 'package:anjo_homework/components/button_continue.dart';
import 'package:anjo_homework/components/gender.dart';
import 'package:anjo_homework/components/input_from.dart';
import 'package:anjo_homework/screen/profile.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  final String name;
  final String user_id;

  final String dob;

  const Second({
    Key? key,
    required this.name,
    required this.user_id,
    required this.dob,
  }) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var name = TextEditingController();

  int index = 0;
  var currentindex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${widget.dob}",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 7),
                height: size.height * 0.21,
                color: Colors.white,
                child: MyGender()),
            Interest_Gender(),
            // About_Me(),
            Container(
              margin: EdgeInsets.only(top: 7),
              height: size.height * 0.55,
              color: Colors.white,
              child: Column(
                children: [
                  Input_From(
                    input: name,
                    topic: "คำอธิบายเกี่ยวกับตัวฉัน",
                    hint: "เกี่ยวกับฉัน",
                    description:
                        "เพิ่มคำอธิบายเพิ่มเติมเกี่ยวกับตัวคุณเพื่อแนะนำตัวกับคนอื่นๆใน ANJO เพื่อเพิ่มโอกาสในการแมตช์",
                    icon: Icon(null),
                  ),
                  Input_From_NoDescription(
                    input: name,
                    topic: "อาชีพ",
                    hint: "อาชีพของฉัน",
                    icon: Icon(null),
                  ),
                  Input_From_NoDescription(
                    input: name,
                    topic: "สถานศึกษา",
                    hint: "อาชีพของฉัน",
                    icon: Icon(null),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 50,
                        width: size.width * 0.9,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Profile()),
                            // );
                            var route = new MaterialPageRoute(
                                builder: (BuildContext context) => Profile(
                                    name: '${widget.name}',
                                    user_id: '${widget.user_id}'
                                    // name: widget.name,
                                    ));
                            Navigator.of(context).push(route);
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
                  // Button_Continue(
                  //   button_text: "ดำเนินการต่อ",
                  //   page: Profile(),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
