import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Global {
  static List<TextEditingController> Textcontrollers = [];
  static List Alltextfild = [];

  static TextStyle style = TextStyle(
    fontSize: 20,
    color: Colors.blue,
  );
  static String? Descripation;
  static String? cndidate;

  static GlobalKey<FormState> formkey = GlobalKey<FormState>();
  static String? name;
  static String? email;
  static String? number;
  static String? address1;
  static String? address2;
  static String? address3;
  static TextEditingController nameController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController numberController = TextEditingController();
  static TextEditingController address1Controller = TextEditingController();
  static TextEditingController address2Controller = TextEditingController();
  static TextEditingController address3Controller = TextEditingController();
  static int initialIndex = 0;
  static XFile? pic;
  static ImagePicker picker = ImagePicker();

  static bool switc = false;
  static String? dis;
  static String? date;
  static String? city;

  static String? course;
  static String? school;
  static String? cgpa;
  static String? year;
  static TextStyle style1 = TextStyle(
    fontSize: 16,
    color: Colors.blue,
  );

  static TextStyle style2 = const TextStyle(
    fontSize: 16,
    color: Colors.blue,
  );
  static String? cname;
  static String? school1;
  static String? Empstatus;
  static String? role;

  static bool? english = false;
  static bool? hindi = false;
  static bool? gujarati = false;
  static String? maritalstatus;
  static String? datetime;
  static String? nation;
  static TextStyle style3 = TextStyle(
    fontSize: 16,
    color: Colors.blue,
  );

  static String? titl;
  static String? tecono;
  static String? des;
  static bool? c = false;
  static bool? cp = false;
  static bool? flutter = false;
  static bool? roles = false;

  static String? name1;
  static String? Designation;
  static String? institute;

  static List<TextEditingController> Textcontrollers1 = [];
  static List Alltextfild1 = [];
}
