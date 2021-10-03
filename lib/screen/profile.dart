// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "ข้อมูลโปรไฟล์",
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
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    "โปรไฟล์",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Mitr'),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 4.0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text(
                            "คำอธิบายเกี่ยวกับตัวฉัน",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Mitr'),
                          ),
                          trailing: Text(
                            "เฮฮา",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Mitr'),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 4.0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text(
                            "อาชีพ",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Mitr'),
                          ),
                          trailing: Text(
                            "ธุรกิจส่วนตัว",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Mitr'),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 4.0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text(
                            "สถานศึกษา",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Mitr'),
                          ),
                          trailing: Text(
                            "มหาวิทยาลัยกรุงเทพ",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Mitr'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    "เพศ",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Mitr'),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 4.0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text(
                            "เพศกำเนิด",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Mitr'),
                          ),
                          trailing: Text(
                            "ชาย",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Mitr'),
                          ),
                        ),
                        Divider(),
                        ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 4.0),
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            title: Text(
                              "เพศของฉัน",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mitr'),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "ผู้ชาย | ชอบเพศตรงข้าม",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Mitr'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    "เมืองเกิด",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Mitr'),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 4.0),
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            title: Text(
                              "ประเทศ",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mitr'),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "ไทย",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Mitr'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                  ),
                                )
                              ],
                            )),
                        Divider(),
                        ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 4.0),
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            title: Text(
                              "จังหวัด",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mitr'),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "ภูเก็ต",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Mitr'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    "ข้อมูลทั่วไป",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Mitr'),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 4.0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text(
                            "ชื่อของฉัน",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Mitr'),
                          ),
                          trailing: Text(
                            "ณัฐพล",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Mitr'),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 4.0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text(
                            "ANJO ID",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Mitr'),
                          ),
                          trailing: Text(
                            "NUTTHAPON",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Mitr'),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 4.0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text(
                            "อนุญาติให้เพิ่มเพื่อนด้วย ID",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Mitr'),
                          ),
                          trailing: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeTrackColor: Colors.pink,
                            activeColor: Colors.white,
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
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    margin: EdgeInsets.only(top: 5, bottom: 10),
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 4.0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text(
                            "วันเกิดของฉัน",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Mitr'),
                          ),
                          trailing: Text(
                            "25/02/1999",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Mitr'),
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
