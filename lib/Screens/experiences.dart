import 'package:flutter/material.dart';

import '../utils/global.dart';

class experiences extends StatefulWidget {
  const experiences({Key? key}) : super(key: key);

  @override
  State<experiences> createState() => _experiencesState();
}

class _experiencesState extends State<experiences> {
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
                "Carrier Objective",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Company Name",
                  style: Global.style2,
                ),
                const SizedBox(
                  height: 3,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.cname = val;
                  },
                  decoration: const InputDecoration(
                      hintText: "New Enterprise, San Francisco",
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "School/College/Institute",
                  style: Global.style2,
                ),
                const SizedBox(
                  height: 3,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.school1 = val;
                  },
                  decoration: const InputDecoration(
                      hintText: "New Enterprise, San Francisco",
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Roles(optional)",
                  style: Global.style2,
                ),
                const SizedBox(
                  height: 3,
                ),
                TextFormField(
                  onSaved: (val) {
                    Global.role = val;
                  },
                  decoration: const InputDecoration(
                      hintText:
                          "Working with team members to come up with new concepts and product analysis",
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Employed Status",
                  style: TextStyle(color: Colors.grey),
                ),
                RadioListTile(
                    activeColor: Colors.blue,
                    title: const Text("Previously Employed"),
                    value: "Previously",
                    groupValue: Global.Empstatus,
                    onChanged: (val) {
                      setState(() {
                        Global.Empstatus = val;
                      });
                    }),
                RadioListTile(
                  activeColor: Colors.blue,
                  title: const Text("Currentiy Employed"),
                  value: "Currentiy",
                  groupValue: Global.Empstatus,
                  onChanged: (val) {
                    setState(() {
                      Global.Empstatus = val;
                    });
                  },
                ),
                // Text(
                //   "Date Joined",
                //   style: TextStyle(fontSize: 21, color: Colors.grey),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
