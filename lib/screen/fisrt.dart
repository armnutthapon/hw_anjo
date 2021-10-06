// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:anjo_homework/components/button_continue.dart';
import 'package:anjo_homework/components/input_dob.dart';
import 'package:anjo_homework/components/input_from.dart';
import 'package:anjo_homework/screen/second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formkey = GlobalKey<FormState>();

  var name = TextEditingController();
  var user_id = TextEditingController();
  var date = TextEditingController();
  var month = TextEditingController();
  var year = TextEditingController();

  String dob = '';

  bool isSwitched = false;
  bool _enabled = false;

  void getDOB() {
    dob = "${date.text} / ${month.text} / ${year.text} ";
    return;
  }

  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if (_enabled) {
      _onPressed = () {
        print("tap");
      };
    }
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "สร้างบัญชี",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
              fontFamily: 'Mitr'),
        ),
        backgroundColor: Colors.white, //You can make this transparent
        elevation: 0.0, //No shadow
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Input_From(
                  input: name,
                  topic: "ชื่อของฉัน",
                  hint: "ระบุชื่อ",
                  description:
                      "นี่คือชื่อที่จะปรากฏบนโปรไฟล์ของคุณ และจะไม่สามารถเปลี่ยนแปลงภายหลังได้",
                  icon: Icon(null),
                  error: "กรุณากรอกชื่อ",
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.only(bottom: 10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Input_From(
                        input: user_id,
                        topic: "ANJO ID",
                        hint: "กรอก ID",
                        description:
                            "คุณสามารถใช้ ANJO ID เพื่อระบุตัวตนและให้ผู้ใช้คนอื่นเพิ่มเพื่อน ซึ่งไม่สามารถเปลี่ยนแปลงภายหลังได้",
                        icon: Icon(Icons.check_circle),
                        error: "กรุณากรอก ID",
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            const Text(
                              "อนุญาติให้เพิ่มเพื่อนด้วย ID",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mitr'),
                            ),
                            Spacer(),
                            CupertinoSwitch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                              activeColor: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: size.height * 0.42,
                color: Colors.white,
                child: Column(
                  children: [
                    const DOB_topic(topic: "วันเกิดของฉัน"),
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DOB_input(
                            topic: "วัน",
                            hint: "วัน",
                            width: 80,
                            input_dob: date,
                            error: "กรุณากรอกข้อมูล",
                          ),
                          DOB_input(
                            topic: "เดือน",
                            hint: "เดือน",
                            width: 80,
                            input_dob: month,
                            error: "กรุณากรอกข้อมูล",
                          ),
                          DOB_input(
                            topic: "ปี",
                            hint: "ปี",
                            width: 100,
                            input_dob: year,
                            error: "กรุณากรอกข้อมูล",
                          ),
                        ],
                      ),
                    ),
                    DOB_description(
                        description:
                            "หลังจากลงทะเบียนแล้ว คุณไม่สามารถแก้ไขวันเกิดของคุณได้ กรุณาตรวจสอบวันเกิดของคุณให้ถูกต้อง"),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        child: SizedBox(
                          height: 50,
                          width: size.width * 0.9,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                getDOB();
                                var route = new MaterialPageRoute(
                                    builder: (BuildContext context) => Second(
                                        name: name.text,
                                        user_id: user_id.text,
                                        dob: dob,
                                        isSwitched: isSwitched));
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
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
