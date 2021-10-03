// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anjo_homework/screen/second.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController year = TextEditingController();
  bool isSwitched = false;
  bool _enabled = false;

  void dispose() {
    name.dispose();
    id.dispose();
    date.dispose();
    month.dispose();
    year.dispose();
    super.dispose();
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 7),
                    height: size.height * 0.2,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 15, top: 10),
                                child: Text(
                                  "ชื่อของฉัน",
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
                              controller: name,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 20),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[500]),
                                  hintText: "ระบุชื่อ",
                                  fillColor: Colors.grey.shade100),
                            )),
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 10),
                          child: Wrap(
                            children: [
                              Text(
                                "นี่คือชื่อที่จะปรากฏบนโปรไฟล์ของคุณ และจะไม่สามารถเปลี่ยนแปลงภายหลังได้",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Mitr'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 7),
                    height: size.height * 0.28,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 15, top: 10),
                                child: Text(
                                  "ANJO ID",
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
                              controller: id,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 20),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[500]),
                                  hintText: "ระบุ ID",
                                  fillColor: Colors.grey.shade100),
                            )),
                        Container(
                          padding:
                              EdgeInsets.only(left: 15, right: 10, bottom: 5),
                          child: Wrap(
                            children: [
                              Text(
                                "คุณสามารถใช้ ANJO ID เพื่อระบุตัวตนและให้ผู้ใช้คนอื่นเพิ่มเพื่อน ซึ่งไม่สามารถเปลี่ยนแปลงภายหลังได้",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Mitr'),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            children: [
                              Text(
                                "อนุญาติให้เพิ่มเพื่อนด้วย ID",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Mitr'),
                              ),
                              Spacer(),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                                activeTrackColor: Colors.pink,
                                activeColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 7),
                    height: size.height * 0.36,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15, top: 5, bottom: 5),
                                child: Text(
                                  "วันเกิดของฉัน",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ))
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [Text("วัน"), Text("เดือน"), Text("ปี")],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                  width: 80,
                                  child: Column(
                                    children: [
                                      Container(
                                          height: size.height * 0.06,
                                          child: TextField(
                                            controller: date,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(10.0),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                filled: true,
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[500]),
                                                fillColor:
                                                    Colors.grey.shade100),
                                          )),
                                    ],
                                  )),
                              Text("-"),
                              SizedBox(
                                  width: 80,
                                  child: Column(
                                    children: [
                                      Container(
                                          height: size.height * 0.06,
                                          child: TextField(
                                            controller: month,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(10.0),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                filled: true,
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[500]),
                                                fillColor:
                                                    Colors.grey.shade100),
                                          )),
                                    ],
                                  )),
                              Text("-"),
                              SizedBox(
                                  width: 80,
                                  child: Column(
                                    children: [
                                      Container(
                                          height: size.height * 0.06,
                                          child: TextField(
                                            controller: year,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(10.0),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                filled: true,
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[500]),
                                                fillColor:
                                                    Colors.grey.shade100),
                                          )),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 10, top: 5, bottom: 20),
                          child: Wrap(
                            children: [
                              Text(
                                "หลังจากลงทะเบียนแล้ว คุณไม่สามารถแก้ไขวันเกิดของคุณได้ กรุณาตรวจสอบวันเกิดของคุณให้ถูกต้อง",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: size.width * 0.9,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Second()),
                              );
                            },
                            child: Text(
                              'ดำเนินการต่อ',
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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
