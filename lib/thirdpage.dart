import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class thirdpagewidget extends StatefulWidget {
  const thirdpagewidget({super.key, required this.name, required this.email, required this.age,});

  final String name;
  final  String email;
  final String age;
  @override
  State<thirdpagewidget> createState() => _thirdpageWidgetState();
}

class _thirdpageWidgetState extends State<thirdpagewidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              '${"Name: " +widget.name}',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '${"Email: "+widget.email}',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '${"Age: " +widget.age}',
              style: TextStyle(fontSize: 30),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: Text("Click to Back"),
            // )
          ],
        ),
      ),
    );
  }
}
