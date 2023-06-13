import 'package:flutter/material.dart';

import '../utils/global.dart';

class personal_details extends StatefulWidget {
  const personal_details({Key? key}) : super(key: key);

  @override
  State<personal_details> createState() => _personal_detailsState();
}

class _personal_detailsState extends State<personal_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 140,
        title: Text(
          "Personal Details",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        margin: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 80),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DOB",
                  style: Global.style3,
                ),
                SizedBox(
                  height: 3,
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  onSaved: (val) {
                    Global.datetime = val;
                  },
                  decoration: InputDecoration(
                      hintText: "DD/MM/YYYY", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Marital Status",
                  style: Global.style3,
                ),
                RadioListTile(
                    activeColor: Colors.blue,
                    title: Text("Single"),
                    value: "single",
                    groupValue: Global.maritalstatus,
                    onChanged: (val) {
                      setState(() {
                        Global.maritalstatus = val;
                      });
                    }),
                RadioListTile(
                  activeColor: Colors.blue,
                  title: Text("Married"),
                  value: "marride",
                  groupValue: Global.maritalstatus,
                  onChanged: (val) {
                    setState(() {
                      Global.maritalstatus = val;
                    });
                  },
                ),
                Text(
                  "Languages Known",
                  style: Global.style3,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: Global.english,
                        onChanged: (val) {
                          setState(() {
                            Global.english = val;
                          });
                        }),
                    Text("English"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: Global.hindi,
                        onChanged: (val) {
                          setState(() {
                            Global.hindi = val;
                          });
                        }),
                    Text("Hindi"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: Global.gujarati,
                        onChanged: (val) {
                          setState(() {
                            Global.gujarati = val;
                          });
                        }),
                    Text("Gujarati"),
                  ],
                ),
                Text(
                  "Nationality",
                  style: Global.style3,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.nation = val;
                  },
                  decoration: InputDecoration(
                      hintText: "Indian", border: OutlineInputBorder()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
