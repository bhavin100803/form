import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstpageWidget extends StatefulWidget {
  const firstpageWidget({Key? Key,required this.name,required this.email}): super(key:Key);

  final String name;
  final  String email;
  @override
  State<firstpageWidget> createState() => _firstpageWidgetState();
}

class _firstpageWidgetState extends State<firstpageWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              '${widget.name}',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '${widget.email}',
              style: TextStyle(fontSize: 30),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Write New Text"),
            )
          ],
        ),
      ),
    );
  }
}
