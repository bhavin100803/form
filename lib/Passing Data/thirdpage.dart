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
        title: Text('Third Screen',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff3c415e),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: 'Name: '  ,
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:35),
                children: <TextSpan>[
                  TextSpan(text: '${widget.name}', style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.normal), ),
                ],
              ),
            ),

            RichText(
              text: TextSpan(
                text: 'Email: '  ,
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:35),
                children: <TextSpan>[
                  TextSpan(text: '${widget.email}', style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.normal), ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Age: '  ,
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:35),
                children: <TextSpan>[
                  TextSpan(text: '${widget.age}', style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.normal), ),
                ],
              ),
            ),


            // Text(
            //   '${widget.name}',
            //   style: TextStyle(fontSize: 30),
            // ),
            // Text(
            //   '${"Email: "+widget.email}',
            //   style: TextStyle(fontSize: 30),
            // ),
            // Text(
            //   '${"Age: " +widget.age}',
            //   style: TextStyle(fontSize: 30),
            // ),
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
