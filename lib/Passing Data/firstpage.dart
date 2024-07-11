import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form/Passing%20Data/thirdpage.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'dart:math' as math;

import 'package:form/Passing%20Data/secondpage.dart';


class animationWidget extends StatefulWidget {
  const animationWidget({super.key});

  @override
  State<animationWidget> createState() => _animationWidgetState();
}

String? validateemail(String? value) {
  const pattern = r'[a-z0-9_\-]+[@][a-z]+[\.][a-z]{2,3}';
  final regex = RegExp(pattern);

  return value!.isNotEmpty && !regex.hasMatch(value)
      ? 'Enter valid email address like "xyz@demo.com"'
      : null;
}

class _animationWidgetState extends State<animationWidget> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff3c415e),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextField(
                    cursorColor: Colors.black,
                    controller: nameController,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(width: (3))),
                        hintText: "Enter your name")),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black,
                validator: validateemail,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
                controller: emailController,
                obscureText: false,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(width: (3))),
                  hintText: "Enter your email",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(350, 40),
                      backgroundColor: Color(0xff3c415e)),
                  onPressed: () {
                    if (emailController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Please enter email'),
                        duration: Duration(seconds: 2),
                      ));
                      return;
                    }

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              second_pagewidget(
                                name: nameController.text,
                                email: emailController.text,
                              ),
                        ));
                  },
                  child: const Text(
                    'Click',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}