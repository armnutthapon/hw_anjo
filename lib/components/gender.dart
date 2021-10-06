// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyGender extends StatefulWidget {
  const MyGender({Key? key}) : super(key: key);

  @override
  _MyGenderState createState() => _MyGenderState();
}

class _MyGenderState extends State<MyGender> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            child: Column(
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
            ))
      ],
    );
  }

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icons,
                    color: currentindex == index ? Colors.white : color,
                    size: 40,
                  ),
                  Text(
                    value,
                    style: TextStyle(
                        color: currentindex == index ? Colors.white : color,
                        fontSize: 14),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class Interest_Gender extends StatefulWidget {
  const Interest_Gender({Key? key}) : super(key: key);

  @override
  _Interest_GenderState createState() => _Interest_GenderState();
}

class _Interest_GenderState extends State<Interest_Gender> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 7),
      height: size.height * 0.08,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
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
                    }),
              ],
            ),
          ),
        ],
      ),
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
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
