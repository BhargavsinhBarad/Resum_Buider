import 'package:flutter/material.dart';

import '../utils/global.dart';

class achievement extends StatefulWidget {
  const achievement({Key? key}) : super(key: key);

  @override
  State<achievement> createState() => _achievementState();
}

class _achievementState extends State<achievement> {
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
                "Achievement",
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
                "Enter Achivements",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              ...List.generate(
                Global.Textcontrollers.length,
                (index) => getTextfild(i: index),
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          Global.Textcontrollers.add(TextEditingController());
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
            controller: Global.Textcontrollers[i],
            decoration:
                InputDecoration(hintText: "Exceeded sales 17% avearage"),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              Global.Textcontrollers.removeAt(i);
            });
          },
          icon: Icon(Icons.delete),
        ),
      ],
    );
  }
}
