import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/List.dart';

class build_options extends StatefulWidget {
  const build_options({Key? key}) : super(key: key);

  @override
  State<build_options> createState() => _build_optionsState();
}

class _build_optionsState extends State<build_options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 150,
        title: Center(
          child: Column(
            children: [
              Text(
                "Resume Workspace",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Build options",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...myoptions
                .map((e) => Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.1,
                              margin: EdgeInsets.all(5),
                              child: Image.asset("${e['icon']}"),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.07),
                            Text(
                              e['name'],
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                  e['route_name'],
                                );
                              },
                              icon: Icon(CupertinoIcons.forward),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 3,
                        )
                      ],
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
