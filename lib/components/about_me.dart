import 'package:anjo_homework/components/button_continue.dart';
import 'package:anjo_homework/screen/my_profile.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({Key? key}) : super(key: key);

  @override
  _About_MeState createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 7),
      height: size.height * 0.55,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 15, top: 10, bottom: 5),
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
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  hintText: "อธิบายเกี่วกับฉัน",
                ),
              )),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
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
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  hintText: "อาชีพ",
                ),
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
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  hintText: "สถานศึกษา",
                ),
              )),
          // Button_Continue(
          //   button_text: "ดำเนินการต่อ",
          //   page: Profile(),
          // ),
        ],
      ),
    );
  }
}
