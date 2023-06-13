import 'package:flutter/material.dart';

import '../utils/global.dart';

class carrier_objective extends StatefulWidget {
  const carrier_objective({Key? key}) : super(key: key);

  @override
  State<carrier_objective> createState() => _carrier_objectiveState();
}

class _carrier_objectiveState extends State<carrier_objective> {
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
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: double.infinity,
            color: Colors.white,
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(
                    "Carrier Objective",
                    style: Global.style,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    onSaved: (val) {
                      Global.Descripation = val;
                    },
                    decoration: InputDecoration(
                        hintText: "Descripation", border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: double.infinity,
            color: Colors.white,
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(
                    "Current Designation (Experienceed Candidate)",
                    style: Global.style,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    onSaved: (val) {
                      Global.cndidate = val;
                    },
                    decoration: InputDecoration(
                      hintText: "Software Engineer",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
