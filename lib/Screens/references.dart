import 'package:flutter/material.dart';

import '../utils/global.dart';

class references extends StatefulWidget {
  const references({Key? key}) : super(key: key);

  @override
  State<references> createState() => _referencesState();
}

class _referencesState extends State<references> {
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
                "References",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.48,
        width: double.infinity,
        color: Colors.white,
        margin: EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Reference Name",
                  style: Global.style,
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.name1 = val;
                  },
                  decoration: InputDecoration(
                      hintText: "Name", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Designation",
                  style: Global.style,
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.Designation = val;
                  },
                  decoration: InputDecoration(
                      hintText: "Designation", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Organization/Institute",
                  style: Global.style,
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.institute = val;
                  },
                  decoration: InputDecoration(
                      hintText: "Institute", border: OutlineInputBorder()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
