import 'package:flutter/material.dart';

import '../utils/global.dart';

class technical_skills extends StatefulWidget {
  const technical_skills({Key? key}) : super(key: key);

  @override
  State<technical_skills> createState() => _technical_skillsState();
}

class _technical_skillsState extends State<technical_skills> {
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
                "Technical Skills",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        height: 500,
        width: 500,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Enter your skills ",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              ...List.generate(
                Global.Textcontrollers1.length,
                (index) => getTextfild(i: index),
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          Global.Textcontrollers1.add(TextEditingController());
                        });
                      },
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getTextfild({required int i}) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            controller: Global.Textcontrollers1[i],
            decoration:
                InputDecoration(hintText: "C Programming,Web Technical"),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              Global.Textcontrollers1.removeAt(i);
            });
          },
          icon: Icon(Icons.delete),
        ),
      ],
    );
  }
}
