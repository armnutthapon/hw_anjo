// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DOB_topic extends StatelessWidget {
  final String topic;
  const DOB_topic({Key? key, required this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
            child: Text(
              topic,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ))
      ],
    );
  }
}

class DOB_input extends StatefulWidget {
  final TextEditingController input_dob;

  final String topic;
  final String hint;
  final double width;
  final String error;

  const DOB_input({
    Key? key,
    required this.hint,
    required this.width,
    required this.topic,
    required this.input_dob,
    required this.error,
  }) : super(key: key);

  @override
  _DOB_inputState createState() => _DOB_inputState();
}

class _DOB_inputState extends State<DOB_input> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
        width: widget.width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(widget.topic),
            ),
            Container(
              child: TextFormField(
                controller: widget.input_dob,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    hintText: widget.hint),
                validator: (value) {
                  final numericRegex = RegExp(r'^[0-9]*$');
                  if (value == null || value.isEmpty) {
                    return '${widget.error}';
                  } else if (!numericRegex.hasMatch(value)) {
                    return 'ข้อมูลไม่ภูกต้อง';
                  }
                  return null;
                },
              ),
            ),
          ],
        ));
  }
}

class DOB_description extends StatelessWidget {
  final String description;
  const DOB_description({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 10, top: 5, bottom: 20),
      child: Wrap(
        children: [
          Text(
            description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
