import 'package:flutter/material.dart';

class Input_From_NoDescription extends StatefulWidget {
  final String topic;
  final String hint;
  final String error;

  final TextEditingController input;
  const Input_From_NoDescription({
    Key? key,
    required this.topic,
    required this.hint,
    required this.input,
    required this.error,
  }) : super(key: key);

  @override
  _Input_From_NoDescriptionState createState() =>
      _Input_From_NoDescriptionState();
}

class _Input_From_NoDescriptionState extends State<Input_From_NoDescription> {
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
            // color: Colors.red,
            margin: EdgeInsets.fromLTRB(15, 10, 15, 5),
            child: TextFormField(
              controller: widget.input,
              decoration: InputDecoration(
                // suffixIcon: textLength > 5 ? widget.icon : null,
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
      ],
    );
  }
}
