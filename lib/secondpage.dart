import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form/thirdpage.dart';

class second_pagewidget extends StatefulWidget {
  const second_pagewidget({super.key, required this.name, required this.email,});


  final String name;
  final String email;


  @override
  State<second_pagewidget> createState() => _second_pageState();
}

class _second_pageState extends State<second_pagewidget> {
  final ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin:  EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
              child: TextField(
                cursorColor: Colors.black,
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                    hintText: "Enter your age"),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                           thirdpagewidget(name: widget.name, email: widget.email, age: ageController.text)
                      ));
                },
                child: const Text('Click'))
          ],
        ),
      ),
    );
  }
}
