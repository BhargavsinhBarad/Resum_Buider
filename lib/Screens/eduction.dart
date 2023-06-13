import 'package:flutter/material.dart';

import '../utils/global.dart';

class eduction extends StatefulWidget {
  const eduction({Key? key}) : super(key: key);

  @override
  State<eduction> createState() => _eductionState();
}

class _eductionState extends State<eduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 140,
        title: Center(
          child: Column(
            children: [
              Text(
                "Education",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        margin: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 80),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Course/Degree",
                style: Global.style1,
              ),
              SizedBox(
                height: 3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.course = val;
                },
                decoration: InputDecoration(
                    hintText: "B.Tech Information Technology",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "School/College/Institute",
                style: Global.style1,
              ),
              SizedBox(
                height: 3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.school = val;
                },
                decoration: InputDecoration(
                    hintText: "Bhagvan Mahavir University",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "School/College/Institute",
                style: Global.style1,
              ),
              SizedBox(
                height: 3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.cgpa = val;
                },
                decoration: InputDecoration(
                    hintText: "70% (or) 7.0 CGPA",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Year of Pass",
                style: Global.style1,
              ),
              SizedBox(
                height: 3,
              ),
              TextFormField(
                onSaved: (val) {
                  Global.year = val;
                },
                decoration: InputDecoration(
                  hintText: "2019",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
