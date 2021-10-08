import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input_From extends StatefulWidget {
  final String topic;
  final String hint;
  final String description;
  final String error;
  final int maxLength;

  final Icon icon;
  final TextEditingController input;

  const Input_From({
    Key? key,
    required this.topic,
    required this.hint,
    required this.description,
    required this.icon,
    required this.input,
    required this.error,
    required this.maxLength,
  }) : super(key: key);

  @override
  _Input_FromState createState() => _Input_FromState();
}

class _Input_FromState extends State<Input_From> {
  @override
  int textLength = 0;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  widget.topic,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Mitr'),
                ))
          ],
        ),
        Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 5),
            child: TextFormField(
              maxLength: widget.maxLength >= 500 ? widget.maxLength : null,
              controller: widget.input,
              decoration: InputDecoration(
                suffixIcon: textLength > 5 ? widget.icon : null,
                contentPadding: EdgeInsets.only(left: 20, right: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintStyle: TextStyle(color: Colors.grey[500]),
                hintText: widget.hint,
              ),
              onChanged: (text) {
                setState(() {
                  textLength = text.length;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '${widget.error}';
                }
                return null;
              },
            )),
        Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Text(
                  widget.description,
                  // "นี่คือชื่อที่จะปรากฏบนโปรไฟล์ของคุณ และจะไม่สามารถเปลี่ยนแปลงภายหลังได้",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
