// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anjo_homework/screen/profile.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int index = 0;
  var currentindex = 0;

  void select_gender(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget gender(String value, Color color, int index, IconData icons) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: FlatButton(
            color: currentindex == index ? color : Colors.grey[200],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              select_gender(index);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Icon(icons,
                      color: currentindex == index ? Colors.white : color),
                  Text(
                    value,
                    style: TextStyle(
                        color: currentindex == index ? Colors.white : color),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 7),
                    height: size.height * 0.21,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 15, top: 10),
                                child: Text(
                                  "เพศของฉัน",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Mitr'),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            gender("ผู้ชาย", Colors.blue, 0, Icons.male),
                            gender("ผู้หญิง", Colors.pink, 1, Icons.female),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Wrap(
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: 'โปรดเลือก',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Mitr'),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: 'เพศตามกำเนิด',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.pink)),
                                    TextSpan(text: 'ของคุณ'),
                                    TextSpan(
                                        text:
                                            'เพื่อความแม่นยำและถูกต้องในการคำนวณข้อมูลความสัมพันธ์',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black54)),
                                  ],
                                ),
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
                    height: size.height * 0.08,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Row(
                            children: [
                              Text(
                                "เพศของฉัน",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              TextButton(
                                  child: Text(
                                    "ผู้ชาย | ชอบเพศตรงข้าม",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (_) => MyBottomSheet(),
                                    );

                                    // showModalBottomSheet(
                                    //   isScrollControlled: true,
                                    //   backgroundColor: Colors.transparent,
                                    //   context: context,
                                    //   builder: (context) => Container(
                                    //     decoration: BoxDecoration(
                                    //         color: Colors.white,
                                    //         borderRadius: BorderRadius.vertical(
                                    //             top: Radius.circular(20))),
                                    //     height: 500,
                                    //     child: Column(
                                    //       mainAxisSize: MainAxisSize.min,
                                    //       children: <Widget>[
                                    //         Container(
                                    //           padding: EdgeInsets.fromLTRB(
                                    //               15, 10, 15, 10),
                                    //           child: Row(
                                    //             mainAxisAlignment:
                                    //                 MainAxisAlignment
                                    //                     .spaceBetween,
                                    //             children: [
                                    //               Text(
                                    //                 "เพศของคุณ",
                                    //                 style: TextStyle(
                                    //                   fontSize: 14,
                                    //                   color: Colors.black,
                                    //                   fontWeight:
                                    //                       FontWeight.w400,
                                    //                 ),
                                    //               ),
                                    //               TextButton(
                                    //                 child: Text(
                                    //                   "ยกเลิก",
                                    //                   style: TextStyle(
                                    //                     fontSize: 14,
                                    //                     color: Colors.black54,
                                    //                     fontWeight:
                                    //                         FontWeight.w300,
                                    //                   ),
                                    //                 ),
                                    //                 onPressed: () =>
                                    //                     Navigator.pop(context),
                                    //               ),
                                    //             ],
                                    //           ),
                                    //         ),
                                    //         Container(
                                    //           width: size.width * 0.9,
                                    //           height: 60,
                                    //           decoration: BoxDecoration(
                                    //             borderRadius:
                                    //                 BorderRadius.circular(20),
                                    //             color: Colors.grey.shade300,
                                    //           ),
                                    //           child: Row(
                                    //             children: [
                                    //               interest(
                                    //                   "ผู้ชาย", 0, Colors.pink),
                                    //               interest("ผู้หญิง", 1,
                                    //                   Colors.pink),
                                    //               interest("ไบนารี่", 2,
                                    //                   Colors.pink),
                                    //             ],
                                    //           ),
                                    //         )
                                    //       ],
                                    //     ),
                                    //   ),
                                    // );
                                  }),
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
                    height: size.height * 0.55,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15, top: 10, bottom: 5),
                                child: Text(
                                  "คำอธิบายเกี่ยวกับตัวฉัน",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ))
                          ],
                        ),
                        Container(
                            // color: Colors.red,
                            margin: EdgeInsets.fromLTRB(15, 10, 15, 5),
                            height: size.height * 0.07,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 20),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[500]),
                                  hintText: "",
                                  fillColor: Colors.grey.shade100),
                            )),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 5, bottom: 5),
                          child: Wrap(
                            children: [
                              Text(
                                "เพิ่มคำอธิบายเพิ่มเติมเกี่ยวกับตัวคุณเพื่อแนะนำตัวกับคนอื่นๆใน ANJO เพื่อเพิ่มโอกาสในการแมตช์",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 15,
                                  top: 5,
                                ),
                                child: Text(
                                  "อาชีพ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ))
                          ],
                        ),
                        Container(
                            // color: Colors.red,
                            margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                            height: size.height * 0.07,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 20),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[500]),
                                  hintText: "",
                                  fillColor: Colors.grey.shade100),
                            )),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Text(
                                  "สถานศึกษา",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ))
                          ],
                        ),
                        Container(
                            // color: Colors.red,
                            margin: EdgeInsets.fromLTRB(15, 5, 15, 20),
                            height: size.height * 0.07,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 20),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[500]),
                                  hintText: "",
                                  fillColor: Colors.grey.shade100),
                            )),
                        SizedBox(
                          height: 50,
                          width: size.width * 0.9,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()),
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

class MyBottomSheet extends StatefulWidget {
  @override
  _MyBottomSheetState createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  int index_interest = 0;
  var currentindex_interest = 0;

  void select_interest(int index_interest) {
    setState(() {
      currentindex_interest = index_interest;
    });
    print(currentindex_interest);
  }

  Widget interest(
    String value,
    int index_interest,
    Color color_interest,
  ) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.only(top: 7, bottom: 7),
        child: FlatButton(
            color: currentindex_interest == index_interest
                ? color_interest
                : Colors.grey.shade300,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              select_interest(index_interest);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    value,
                    style: TextStyle(
                        fontSize: 14,
                        color: currentindex_interest == index_interest
                            ? Colors.white
                            : Colors.grey.shade600),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      height: 400,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "เพศของคุณ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                  child: Text(
                    "ยกเลิก",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.9,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300,
            ),
            child: Row(
              children: [
                interest("ผู้ชาย", 0, Colors.pink),
                interest("ผู้หญิง", 1, Colors.pink),
                interest("ไบนารี่", 2, Colors.pink),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [Text("data")],
            ),
          ),
        ],
      ),
    );
  }
}
