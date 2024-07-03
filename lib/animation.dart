import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class animationWidget extends StatefulWidget {
  const animationWidget({super.key});

  @override
  State<animationWidget> createState() => _animationWidgetState();
}

class _animationWidgetState extends State<animationWidget> {
  bool _stretch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
        backgroundColor: Colors.blue,
      ),
       body:
       Container(
         child: SafeArea(
           child: RawMaterialButton(
             onPressed: () {
               showDialog(
                 builder: (context) => AboutDialog(
                   applicationName: "Demo",
                   applicationIcon: Icon(Icons.tv),
                   applicationVersion: "1.0",
                   applicationLegalese: "© Copyright Michelphoenix 2020",
                   children: <Widget>[
                     Text("This is a demo."),
                   ],
                 ), context: context,
               );
             },
             child: Text("Display"),
           ),
         ),
       ),
      // CustomScrollView(
      //   physics: const BouncingScrollPhysics(),
      //   slivers: <Widget>[
      //     SliverAppBar(
      //       stretch: _stretch,
      //       onStretchTrigger: () async {
      //         // Triggers when stretching
      //       },
      //       stretchTriggerOffset: 300.0,
      //       expandedHeight: 200.0,
      //       flexibleSpace: const FlexibleSpaceBar(
      //         title: Text('SliverAppBar'),
      //         background: FlutterLogo(),
      //       ),
      //     ),
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //             (BuildContext context, int index) {
      //           return Container(
      //             color: index.isOdd ? Colors.white : Colors.black12,
      //             height: 100.0,
      //             child: Center(
      //               child: Text('$index',
      //                   textScaler: const TextScaler.linear(5.0)),
      //             ),
      //           );
      //         },
      //         childCount: 20,
      //       ),
      //     ),
      //   ],
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8),
      //     child: OverflowBar(
      //       overflowAlignment: OverflowBarAlignment.center,
      //       alignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             const Text('stretch'),
      //             Switch(
      //               onChanged: (bool val) {
      //                 setState(() {
      //                   _stretch = val;
      //                 });
      //               },
      //               value: _stretch,
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // Center(
      //   child: PhysicalModel(
      //     elevation: 20.0,
      //     shadowColor: Colors.red,
      //     color: Colors.red,
      //     shape: BoxShape.circle,
      //     child: new Container(
      //       width: 200,
      //       height: 200,
      //       decoration: new BoxDecoration(
      //         shape: BoxShape.circle,
      //         border: new Border.all(
      //           color: Colors.red,
      //           width: 1.0,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

