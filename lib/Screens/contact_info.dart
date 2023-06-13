import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/global.dart';

class Contact_Info extends StatefulWidget {
  const Contact_Info({Key? key}) : super(key: key);

  @override
  State<Contact_Info> createState() => _Contact_InfoState();
}

class _Contact_InfoState extends State<Contact_Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Resume Workspace',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                if (Global.formkey.currentState!.validate()) {
                  Global.formkey.currentState!.save();
                } else {
                  Global.initialIndex == 1;
                }
              },
              icon: Icon(Icons.check)),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Global.initialIndex = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 16,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(top: 30),
                              color: Colors.blue,
                              child: const Text(
                                "Contact",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 23,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: (Global.initialIndex == 0)
                                  ? Colors.white
                                  : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Global.initialIndex = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 16,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(top: 30),
                              color: Colors.blue,
                              child: const Center(
                                child: Text(
                                  "Photo",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: (Global.initialIndex == 1)
                                  ? Colors.white
                                  : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 18,
              child: IndexedStack(
                index: Global.initialIndex,
                children: [
                  SingleChildScrollView(
                    child: Form(
                      key: Global.formkey,
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Valid Name";
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    Global.name = val;
                                  },
                                  controller: Global.nameController,
                                  decoration: const InputDecoration(
                                    icon: Icon(
                                      Icons.person,
                                      size: 55,
                                    ),
                                    hintText: "Name",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Valid Email";
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    Global.email = val;
                                  },
                                  controller: Global.emailController,
                                  decoration: const InputDecoration(
                                    icon: Icon(
                                      Icons.mail,
                                      size: 55,
                                    ),
                                    hintText: "Email",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: TextFormField(
                                  maxLength: 10,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Valid Number";
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    Global.number = val;
                                  },
                                  controller: Global.numberController,
                                  keyboardType: TextInputType.phone,
                                  decoration: const InputDecoration(
                                    icon: Icon(
                                      Icons.phone_android_sharp,
                                      size: 55,
                                    ),
                                    hintText: "Phone",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Valid Address";
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    Global.address1 = val;
                                  },
                                  controller: Global.address1Controller,
                                  decoration: const InputDecoration(
                                    icon: Icon(
                                      Icons.location_on,
                                      size: 55,
                                    ),
                                    hintText: "Address (Street, Building No)",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 80, right: 10, top: 5, bottom: 10),
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Valid Address";
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    Global.address2 = val;
                                  },
                                  controller: Global.address2Controller,
                                  decoration: const InputDecoration(
                                    hintText: "Address Line 2",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 80, right: 10, top: 5, bottom: 10),
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Valid Address";
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    Global.address3 = val;
                                  },
                                  controller: Global.address3Controller,
                                  decoration: const InputDecoration(
                                    hintText: "Address Line 3",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (Global.pic == null)
                          CircleAvatar(
                            radius: 85,
                            child: Text("No Image"),
                          )
                        else
                          CircleAvatar(
                            radius: 85,
                            foregroundImage: FileImage(File(Global.pic!.path)),
                          ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () async {
                            final XFile? image = await Global.picker
                                .pickImage(source: ImageSource.camera);
                            setState(() {
                              Global.pic = image;
                            });
                          },
                          child: Icon(Icons.camera_alt_rounded),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () async {
                            final XFile? image = await Global.picker
                                .pickImage(source: ImageSource.gallery);
                            setState(() {
                              Global.pic = image;
                            });
                          },
                          child: Icon(Icons.photo_camera_back_rounded),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
