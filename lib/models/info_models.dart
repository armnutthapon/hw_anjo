import 'package:flutter/material.dart';

class Info {
  final TextEditingController name;
  final TextEditingController user_id;
  final TextEditingController about_me;
  final TextEditingController work;
  final TextEditingController education;
  final String date;
  final String month;
  final String year;
  final String dob;

  Info({
    required this.name,
    required this.user_id,
    required this.about_me,
    required this.work,
    required this.education,
    required this.date,
    required this.month,
    required this.year,
    required this.dob,
  });
}

class Name {
  final TextEditingController name;

  Name({
    required this.name,
  });
}
