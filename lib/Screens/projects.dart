import 'package:flutter/material.dart';

import '../utils/global.dart';

class projects extends StatefulWidget {
  const projects({Key? key}) : super(key: key);

  @override
  State<projects> createState() => _projectsState();
}

class _projectsState extends State<projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 140,
        title: Center(
          child: Column(
            children: [
              Text(
                "Projects",
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
        margin: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 65),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Project Title",
                  style: Global.style,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.titl = val;
                  },
                  decoration: InputDecoration(
                      hintText: "Resumne Builder App",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Project Title",
                  style: Global.style,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: Global.c,
                        onChanged: (val) {
                          setState(() {
                            Global.c = val;
                          });
                        }),
                    Text("C Programming"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: Global.cp,
                        onChanged: (val) {
                          setState(() {
                            Global.cp = val;
                          });
                        }),
                    Text("C++"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: Global.flutter,
                        onChanged: (val) {
                          setState(() {
                            Global.flutter = val;
                          });
                        }),
                    Text("Flutter"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Roles",
                  style: Global.style,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.roles = val as bool?;
                  },
                  decoration: InputDecoration(
                      hintText: "Organize team members,code",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Technologies",
                  style: Global.style,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.tecono = val;
                  },
                  decoration: InputDecoration(
                      hintText: "5 - programmers",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Project Descripation",
                  style: Global.style,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.des = val;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Project Descripation",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
