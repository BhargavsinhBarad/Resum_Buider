import 'package:flutter/material.dart';

import '../utils/global.dart';

class declaration extends StatefulWidget {
  const declaration({Key? key}) : super(key: key);

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
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
                "Declaration",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 5, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Declaration",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                    ),
                  ),
                  Switch(
                    onChanged: (val) {
                      setState(() {
                        Global.switc = val;
                      });
                    },
                    value: Global.switc,
                  ),
                ],
              ),
            ),
            (Global.switc == true)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "🎯",
                                style: TextStyle(fontSize: 60),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                onSaved: (val) {
                                  Global.dis = val;
                                },
                                decoration: InputDecoration(
                                    hintText: "Descripation",
                                    border: OutlineInputBorder()),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(
                                thickness: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Date"),
                                  Text("Place(Interview\nVenue/city)"),
                                ],
                              ),
                              Row(
                                children: [
                                  TextFormField(
                                    keyboardType: TextInputType.datetime,
                                    onSaved: (val) {
                                      Global.date = val;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "DD/MM/YYYY",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  TextFormField(
                                    onSaved: (val) {
                                      Global.city = val;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Eg.Surat",
                                        border: OutlineInputBorder()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(
                    height: 400.5,
                    width: 400,
                    color: Colors.grey,
                  ),
          ],
        ),
      ),
    );
  }
}
