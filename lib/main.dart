import 'package:demo/Screens/personal_details.dart';
import 'package:flutter/material.dart';

import 'Screens/achievement.dart';
import 'Screens/build_options.dart';
import 'Screens/carrier_objective.dart';
import 'Screens/contact_info.dart';
import 'Screens/declaration_page.dart';
import 'Screens/eduction.dart';
import 'Screens/experiences.dart';
import 'Screens/home_page.dart';
import 'Screens/projects.dart';
import 'Screens/references.dart';
import 'Screens/technical_skills.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home_Page(),
        'build_options': (context) => build_options(),
        'contact_info': (context) => Contact_Info(),
        'personal_details': (context) => personal_details(),
        'declaration': (context) => declaration(),
        'technical_skills': (context) => technical_skills(),
        'references': (context) => references(),
        'projects': (context) => projects(),
        'achievement': (context) => achievement(),
        'eduction': (context) => eduction(),
        'carrier_objective': (context) => carrier_objective(),
        'experiences': (context) => experiences(),
      },
    ),
  );
}
