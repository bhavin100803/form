import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pie_chart/pie_chart.dart';

class navigationbarWidget extends StatefulWidget {
  const navigationbarWidget({super.key});

  @override
  State<navigationbarWidget> createState() => _navigationbarWidgetState();
}
class _navigationbarWidgetState extends State<navigationbarWidget> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            indicatorColor: Colors.amber,
            selectedIndex: currentPageIndex,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Badge(child: Icon(Icons.notifications_sharp)),
                label: 'Notifications',
              ),
              NavigationDestination(
                icon: Badge(
                  label: Text('2'),
                  child: Icon(Icons.messenger_sharp),
                ),
                label: 'Messages',
              ),
              NavigationDestination(
                icon: Badge(
                  child: Icon(Icons.settings),
                ),
                label: 'Messages',
              ),
            ],
          ),
      appBar: AppBar(
        title: Text('Practices'),
        backgroundColor: Colors.grey,
      ),
       body:<Widget>[
    /// Home page
    Card(
    shadowColor: Colors.transparent,
    margin: const EdgeInsets.all(8.0),
    child: SizedBox.expand(
    child: Center(
    child: Text(
    'Home page',
    ),
    ),
    ),
    ),

    /// Notifications page
    const Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
    children: <Widget>[
    Card(
    child: ListTile(
    leading: Icon(Icons.notifications_sharp),
    title: Text('Notification 1'),
    subtitle: Text('This is a notification'),
    ),
    ),
    Card(
    child: ListTile(
    leading: Icon(Icons.notifications_sharp),
    title: Text('Notification 2'),
    subtitle: Text('This is a notification'),
    ),
    ),
    ],
    ),
    ),

    /// Messages page
    ListView.builder(
    reverse: true,
    itemCount: 2,
    itemBuilder: (BuildContext context, int index) {
    if (index == 0) {
    return Align(
    alignment: Alignment.centerRight,
    child: Container(
    margin: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(
    'Hello',
    ),
    ),
    );
    }
    return Align(
    alignment: Alignment.centerLeft,
    child: Container(
    margin: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(
    'Hi!',
    ),
    ),
    );
    },
    ),
         Card(
           shadowColor: Colors.transparent,
           margin: const EdgeInsets.all(8.0),
           child: SizedBox.expand(
             child: Center(
               child: Text(
                 'Setting',
               ),
             ),
           ),
         ),

    ][currentPageIndex],

    );
  }
}




