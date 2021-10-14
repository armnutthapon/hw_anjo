import 'package:anjo_homework/components/button_continue.dart';
import 'package:anjo_homework/components/input_dob.dart';
import 'package:anjo_homework/components/input_from.dart';
import 'package:anjo_homework/screen/create_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'dart:async';
import 'dart:convert';

class Create_User extends StatefulWidget {
  const Create_User({Key? key}) : super(key: key);

  @override
  _Create_UserState createState() => _Create_UserState();
}

class _Create_UserState extends State<Create_User> {
  final _formkey = GlobalKey<FormState>();
  bool _autoValidate = false;

  var name = TextEditingController();
  var user_id = TextEditingController();
  var date = TextEditingController();
  var month = TextEditingController();
  var year = TextEditingController();
  var dob = TextEditingController();

  // String dob = '';

  bool isSwitched = false;
  bool _enabled = false;

  DateTime selectedDate = DateTime.now();

  DateTime? _chosenDateTime;

  buildCupertinoDatePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height / 3,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20),
                  alignment: Alignment.centerRight,
                  child: CupertinoButton(
                    child: Text(
                      'ตกลง',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Mitr'),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                Container(
                  height: 200,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (picked) {
                      if (picked != null && picked != selectedDate)
                        setState(() {
                          selectedDate = picked;
                          dob.text = DateFormat('dd/MM/yyyy').format(picked);
                        });
                    },
                    initialDateTime: selectedDate,
                    minimumYear: 2000,
                    maximumYear: 2025,
                  ),
                ),

                // Close the modal
              ],
            ),
          );
        });
  }

  Widget _showCuperTinoDatePicker() {
    return CupertinoDatePicker(
      initialDateTime: selectedDate,
      onDateTimeChanged: (DateTime newdate) {
        selectedDate = newdate;
        print('2. onDateTimeChanged : ${selectedDate}');
      },
      minimumYear: 2010,
      maximumYear: 2050,
      mode: CupertinoDatePickerMode.date,
    );
  }

  @override
  Widget build(BuildContext context) {
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
        autovalidate: _autoValidate,
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
                  hint: "กรอกชื่อ",
                  description:
                      "นี่คือชื่อที่จะปรากฏบนโปรไฟล์ของคุณ และจะไม่สามารถเปลี่ยนแปลงภายหลังได้",
                  icon: Icon(null),
                  error: "กรุณากรอกชื่อ",
                  maxLength: 50,
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
                        maxLength: 50,
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
                height: size.height * 0.45,
                color: Colors.white,
                child: Column(
                  children: [
                    const DOB_topic(topic: "วันเกิดของฉัน"),
                    Container(
                        margin: EdgeInsets.fromLTRB(15, 10, 15, 5),
                        child: InkWell(
                          onTap: () {
                            buildCupertinoDatePicker(context);
                          },
                          child: IgnorePointer(
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: dob,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 20, right: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintStyle: TextStyle(color: Colors.grey[500]),
                              ),
                              onChanged: (text) {
                                setState(() {});
                              },
                              validator: (value) {
                                // final numericRegex = RegExp(r'^[0-9]*$');
                                if (value == null || value.isEmpty) {
                                  return 'กรุณากรอกข้อมูล';
                                }
                                // } else if (!numericRegex.hasMatch(value)) {
                                //   return 'ข้อมูลไม่ภูกต้อง';
                                // }
                                return null;
                              },
                            ),
                          ),
                        )),
                    // Container(
                    //   padding: EdgeInsets.only(bottom: 5),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       DOB_input(
                    //         topic: "วัน",
                    //         hint: "วัน",
                    //         width: 80,
                    //         input_dob: date,
                    //         error: "กรุณากรอกข้อมูล",
                    //       ),
                    //       DOB_input(
                    //         topic: "เดือน",
                    //         hint: "เดือน",
                    //         width: 80,
                    //         input_dob: month,
                    //         error: "กรุณากรอกข้อมูล",
                    //       ),
                    //       DOB_input(
                    //         topic: "ปี",
                    //         hint: "ปี",
                    //         width: 100,
                    //         input_dob: year,
                    //         error: "กรุณากรอกข้อมูล",
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    DOB_description(
                        description:
                            "หลังจากลงทะเบียนแล้ว คุณไม่สามารถแก้ไขวันเกิดของคุณได้ กรุณาตรวจสอบวันเกิดของคุณให้ถูกต้อง"),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        child: SizedBox(
                            height: 50,
                            width: size.width * 0.9,
                            child: Button_Continue(
                                button_text: "ดำเนินการต่อ",
                                page: Create_Information(
                                    name: name,
                                    user_id: user_id,
                                    dob: dob.text,
                                    date: date.text,
                                    month: month.text,
                                    year: year.text,
                                    isSwitched: isSwitched),
                                formkey: _formkey))),
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
