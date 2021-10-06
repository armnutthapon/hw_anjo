// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anjo_homework/components/profile_information.dart';
import 'package:anjo_homework/components/profile_topic.dart';
import 'package:flutter/material.dart';

// class Profile extends StatefulWidget {
//   // final String name;

//   const Profile({
//     Key? key,
//     // required this.name,
//   }) : super(key: key);

//   @override
//   _ProfileState createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   bool isSwitched = false;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "ข้อมูลโปรไฟล์",
//           style: TextStyle(
//               fontSize: 20,
//               color: Colors.black87,
//               fontWeight: FontWeight.w500,
//               fontFamily: 'Mitr'),
//         ),
//         leading: new IconButton(
//           icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         backgroundColor: Colors.white, //You can make this transparent
//         elevation: 0.0, //No shadow
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Profile_Topic(
//             //   topic: "โปรไฟล์",
//             // ),
//             // Container(
//             //   padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
//             //   margin: EdgeInsets.only(top: 5, bottom: 5),
//             //   color: Colors.white,
//             //   child: Column(
//             //     children: [
//             //       Profile_Information(
//             //         topic: "คำอธิบายเกี่ยวกับตัวฉัน",
//             //         data: "เฮฮา",
//             //       ),
//             //       Divider(),
//             //       Profile_Information(
//             //         topic: "อาชีพ",
//             //         data: "ธุรกิจส่วนตัว",
//             //       ),
//             //       Divider(),
//             //       Profile_Information(
//             //         topic: "สถานศึกษา",
//             //         data: "มหาวิทยาลัยกรุงเทพ",
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             // Profile_Topic(
//             //   topic: "เพศ",
//             // ),
//             // Container(
//             //   padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
//             //   margin: EdgeInsets.only(top: 5, bottom: 5),
//             //   color: Colors.white,
//             //   child: Column(
//             //     children: [
//             //       Profile_Information(
//             //         topic: "เพศกำเนิด",
//             //         data: "ชาย",
//             //       ),
//             //       Divider(),
//             //       Profile_Information(
//             //         topic: "เพศของฉัน",
//             //         data: "ผู้ชาย | ชอบเพศตรงข้าม",
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             // Profile_Topic(
//             //   topic: "เมืองเกิด",
//             // ),
//             // Container(
//             //   padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
//             //   margin: EdgeInsets.only(top: 5, bottom: 5),
//             //   color: Colors.white,
//             //   child: Column(
//             //     children: [
//             //       Profile_Information(
//             //         topic: "ประเทศ",
//             //         data: "ไทย",
//             //       ),
//             //       Divider(),
//             //       Profile_Information(
//             //         topic: "จังหวัด",
//             //         data: "ภูเก็ต",
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             // Profile_Topic(
//             //   topic: "ข้อมูลทั่วไป",
//             // ),
//             // Container(
//             //   padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
//             //   margin: EdgeInsets.only(top: 5, bottom: 5),
//             //   color: Colors.white,
//             //   child: Column(
//             //     children: [
//             //       Profile_Information(
//             //         topic: "ชื่อของฉัน",
//             //         data: "ณัฐพล",
//             //       ),
//             //       Divider(),
//             //       Profile_Information(
//             //         topic: "ANJO ID",
//             //         data: "NUTTHAPON",
//             //       ),
//             //       Divider(),
//             //       Toggle_Switch()
//             //     ],
//             //   ),
//             // ),
//             // Container(
//             //   padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
//             //   margin: EdgeInsets.only(top: 5, bottom: 10),
//             //   color: Colors.white,
//             //   child: Column(
//             //     children: [
//             //       Profile_Information(
//             //         topic: "วันเกิดของฉัน",
//             //         data: "25/02/1999",
//             //       ),
//             //     ],
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//       backgroundColor: Colors.grey.shade300,
//     );
//   }
// }

class Profile extends StatefulWidget {
  final String name;
  final String user_id;

  const Profile({Key? key, required this.name, required this.user_id})
      : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${widget.name}",
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
            Profile_Topic(
              topic: "โปรไฟล์",
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.white,
              child: Column(
                children: [
                  Profile_Information(
                    topic: "คำอธิบายเกี่ยวกับตัวฉัน",
                    data: "${widget.name}",
                  ),
                  Divider(),
                  Profile_Information(
                    topic: "อาชีพ",
                    data: "${widget.user_id}",
                  ),
                  Divider(),
                  Profile_Information(
                    topic: "สถานศึกษา",
                    data: "มหาวิทยาลัยกรุงเทพ",
                  ),
                ],
              ),
            ),
            Profile_Topic(
              topic: "เพศ",
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.white,
              child: Column(
                children: [
                  Profile_Information(
                    topic: "เพศกำเนิด",
                    data: "ชาย",
                  ),
                  Divider(),
                  Profile_Information(
                    topic: "เพศของฉัน",
                    data: "ผู้ชาย | ชอบเพศตรงข้าม",
                  ),
                ],
              ),
            ),
            Profile_Topic(
              topic: "เมืองเกิด",
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.white,
              child: Column(
                children: [
                  Profile_Information(
                    topic: "ประเทศ",
                    data: "ไทย",
                  ),
                  Divider(),
                  Profile_Information(
                    topic: "จังหวัด",
                    data: "ภูเก็ต",
                  ),
                ],
              ),
            ),
            Profile_Topic(
              topic: "ข้อมูลทั่วไป",
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: EdgeInsets.only(top: 5, bottom: 5),
              color: Colors.white,
              child: Column(
                children: [
                  Profile_Information(
                    topic: "ชื่อของฉัน",
                    data: "${widget.name}",
                  ),
                  Divider(),
                  Profile_Information(
                    topic: "ANJO ID",
                    data: "${widget.user_id}",
                  ),
                  Divider(),
                  Toggle_Switch()
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: EdgeInsets.only(top: 5, bottom: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Profile_Information(
                    topic: "วันเกิดของฉัน",
                    data: "25/02/1999",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
