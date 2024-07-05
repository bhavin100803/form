import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstpageWidget extends StatefulWidget {
  const firstpageWidget({super.key});

  @override
  State<firstpageWidget> createState() => _firstpageWidgetState();
}

class _firstpageWidgetState extends State<firstpageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: Text('bhavin'),
    );
  }
}
