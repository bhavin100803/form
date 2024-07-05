import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'dart:math' as math;

import 'package:form/firstpage.dart';

// const List<Widget> fruits = <Widget>[
//   Text('Apple'),
//   Text('Banana'),
//   Text('Orange')
// ];
//
// const List<Widget> vegetables = <Widget>[
//   Text('Tomatoes'),
//   Text('Potatoes'),
//   Text('Carrots')
// ];
//
// const List<Widget> icons = <Widget>[
//   Icon(Icons.sunny),
//   Icon(Icons.cloud),
//   Icon(Icons.ac_unit),
// ];

class animationWidget extends StatefulWidget {
  const animationWidget({super.key});

  @override
  State<animationWidget> createState() => _animationWidgetState();
}

class _animationWidgetState extends State<animationWidget> {
  // toggle button
  // final List<bool> _selectedFruits = <bool>[true, false, false];
  // final List<bool> _selectedVegetables = <bool>[false, true, false];
  // final List<bool> _selectedWeather = <bool>[false, false, true];
  // bool vertical = false;

  // late AnimationController controller;
  // @override
  // void initState() {
  //   controller = AnimationController(
  //     /// [AnimationController]s can be created with `vsync: this` because of
  //     /// [TickerProviderStateMixin].
  //     vsync: this,
  //     duration: const Duration(seconds: 5),
  //   )..addListener(() {
  //     setState(() {});
  //   });
  //   controller.repeat(reverse: true);
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }
  // bool _stretch = true;

  // final nameController = TextEditingController();
  // final emailController = TextEditingController();

  // List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  // static const List<(Color?, Color? background, ShapeBorder?)> customizations =
  // <(Color?, Color?, ShapeBorder?)>[
  //    (null, null, null), // The FAB uses its default for null parameters.
  //   (null, Colors.green, null),
  //   (Colors.white, Colors.green, null),
  //   (Colors.white, Colors.green, CircleBorder()),
  // ];
  // int index = 0;


@override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
     ),
      body: const ExpandedExample(),





//   floating button
// const Center(child: Text('Press the button below!')),
// floatingActionButton: FloatingActionButton(
//   onPressed: () {
//     setState(() {
//       index = (index + 1) % customizations.length;
//     });
//   },
//   foregroundColor: customizations[index].$1,
//   backgroundColor: customizations[index].$2,
//   shape: customizations[index].$3,
//   child: const Icon(Icons.navigation),
// ),


//   CustomScrolllview

// CustomScrollView(slivers: [
//   SliverPinnedHeader(
//       child: Container(
//           color: Colors.blue[100],
//           height: 100,
//           child: Text(
//             "I am a Pinned Header",
//             style: TextStyle(fontSize: 30),
//           ))),
//   SliverAnimatedPaintExtent(
//     duration: const Duration(milliseconds: 150),
//     child: SliverList(
//       delegate: SliverChildBuilderDelegate(
//             (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Container(
//               color: Colors.pink[100],
//               height: 40,
//               alignment: Alignment.center,
//               child: Text(
//                 "$index",
//                 style: const TextStyle(fontSize: 30),
//               ),
//             ),
//           );
//         },
//         // 40 list items
//         childCount: 10,
//       ),
//     ),
//   ),
//   SliverStack(
//     // defaults to false
//     insetOnOverlap: true,
//     children: <Widget>[
//       SliverPositioned.fill(
//         child: Container(color: Colors.yellow),
//       ),
//       SliverList(
//         delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Container(
//                 color:
//                 index % 2 == 0 ? Colors.green : Colors.greenAccent,
//                 height: 40,
//                 alignment: Alignment.center,
//                 child: Text(
//                   "Item $index",
//                   style: const TextStyle(fontSize: 30),
//                 ),
//               ),
//             );
//           },
//           // 40 list items
//           childCount: 10,
//         ),
//       ),
//     ],
//   ),
//   SliverGrid(
//     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 3,
//       mainAxisSpacing: 10,
//       crossAxisSpacing: 10,
//       childAspectRatio: 2.0,
//     ),
//     delegate: SliverChildBuilderDelegate(
//           (context, index) {
//         return Container(
//           height: 20,
//           color: Colors.amber[100],
//           alignment: Alignment.center,
//           child: Text(index.toString()),
//         );
//       },
//       childCount: 41,
//     ),
//   )
// ])


//   dismissible

// ListView.builder(
//   itemCount: items.length,
//   itemBuilder: (context, index) {
//     final item = items[index];
//     return Dismissible(
//       key: Key(item), // Unique key for each item
//       onDismissed: (direction) {
//         // Remove the item from the list when dismissed
//         setState(() {
//           items.removeAt(index);
//         });
//
//         // Show a snackbar to indicate item removal
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('$item dismissed'),
//           ),
//         );
//       },
//       background: Container(
//         color: Colors.red, // Background color when swiping
//         child: Icon(
//           Icons.delete,
//           color: Colors.white,
//           size: 36,
//         ),
//         alignment: Alignment.centerRight,
//         padding: EdgeInsets.only(right: 20),
//       ),
//       child: ListTile(
//         title: Text(item),
//       ),
//     );
//   },
// ),


//   first screen to second screen

// Center(
//   child: Container(
//     child: Column(
//       children: [
//         Center(
//           child: TextField(
//               cursorColor: Colors.black,
//               controller: nameController,
//               decoration:
//               InputDecoration(hintText: "Enter your name")),
//         ),
//         TextField(
//           cursorColor: Colors.black,
//           controller: emailController,
//           decoration: InputDecoration(
//               hintText: "Enter your email"
//           ),
//         ),
//         ElevatedButton(onPressed: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => firstpageWidget(),
//               ));
//         }, child: Text('Click'))
//       ],
//     ),
//   ),
// ),

//   opacity

//  Center(
//    child: AnimatedOpacity(
//      // If the widget is visible, animate to 0.0 (invisible).
//      // If the widget is hidden, animate to 1.0 (fully visible).
//      opacity: _visible ? 1.0 : 0.0,
//      duration: const Duration(milliseconds: 500),
//      // The green box must be a child of the AnimatedOpacity widget.
//      child: Container(
//        width: 200,
//        height: 200,
//        color: Colors.green,
//      ),
//    ),
//  ),
// floatingActionButton: FloatingActionButton(
//   onPressed: () {
//     // Call setState. This tells Flutter to rebuild the
//     // UI with the changes.
//     setState(() {
//       _visible = !_visible;
//     });
//   },
//   tooltip: 'Toggle Opacity',
//   child: const Icon(Icons.flip),
// ),

// RaidedButton is deprecated and should not be used
// Instead use ElevatedButton

// child: RaisedButton(
//   onPressed: () {
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: const Text("Alert Dialog Box"),
//         content: const Text("You have raised a Alert Dialog Box"),
//         actions: <Widget>[

// FlatButton is deprecated and should not be used
// Instead use TextButton

//           FlatButton(
//             onPressed: () {
//               Navigator.of(ctx).pop();
//             },
//             child: const Text("okay"),
//           ),
//         ],
//       ),
//     );
//   },
//   child: const Text("Show alert Dialog box"),
// ),

//   Toggle button

//  Center(
//    child: SingleChildScrollView(
//      child: Column(
//        mainAxisSize: MainAxisSize.min,
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          // ToggleButtons with a single selection.
//          Text('Single-select', style: theme.textTheme.titleSmall),
//          const SizedBox(height: 5),
//          ToggleButtons(
//            direction: vertical ? Axis.vertical : Axis.horizontal,
//            onPressed: (int index) {
//              setState(() {
//                // The button that is tapped is set to true, and the others to false.
//                for (int i = 0; i < _selectedFruits.length; i++) {
//                  _selectedFruits[i] = i == index;
//                }
//              });
//            },
//            borderRadius: const BorderRadius.all(Radius.circular(8)),
//            selectedBorderColor: Colors.red[700],
//            selectedColor: Colors.white,
//            fillColor: Colors.red[200],
//            color: Colors.red[400],
//            constraints: const BoxConstraints(
//              minHeight: 40.0,
//              minWidth: 80.0,
//            ),
//            isSelected: _selectedFruits,
//            children: fruits,
//          ),
//          const SizedBox(height: 20),
//          // ToggleButtons with a multiple selection.
//          Text('Multi-select', style: theme.textTheme.titleSmall),
//          const SizedBox(height: 5),
//          ToggleButtons(
//            direction: vertical ? Axis.vertical : Axis.horizontal,
//            onPressed: (int index) {
//              // All buttons are selectable.
//              setState(() {
//                _selectedVegetables[index] = !_selectedVegetables[index];
//              });
//            },
//            borderRadius: const BorderRadius.all(Radius.circular(8)),
//            selectedBorderColor: Colors.green[700],
//            selectedColor: Colors.white,
//            fillColor: Colors.green[200],
//            color: Colors.green[400],
//            constraints: const BoxConstraints(
//              minHeight: 40.0,
//              minWidth: 80.0,
//            ),
//            isSelected: _selectedVegetables,
//            children: vegetables,
//          ),
//          const SizedBox(height: 20),
//          // ToggleButtons with icons only.
//          Text('Icon-only', style: theme.textTheme.titleSmall),
//          const SizedBox(height: 5),
//          ToggleButtons(
//            direction: vertical ? Axis.vertical : Axis.horizontal,
//            onPressed: (int index) {
//              setState(() {
//                // The button that is tapped is set to true, and the others to false.
//                for (int i = 0; i < _selectedWeather.length; i++) {
//                  _selectedWeather[i] = i == index;
//                }
//              });
//            },
//            borderRadius: const BorderRadius.all(Radius.circular(8)),
//            selectedBorderColor: Colors.blue[700],
//            selectedColor: Colors.white,
//            fillColor: Colors.blue[200],
//            color: Colors.blue[400],
//            isSelected: _selectedWeather,
//            children: icons,
//          ),
//        ],
//      ),
//    ),
//  ),
// floatingActionButton: FloatingActionButton.extended(
//   onPressed: () {
//     setState(() {
//       // When the button is pressed, ToggleButtons direction is changed.
//       vertical = !vertical;
//     });
//   },
//   icon: const Icon(Icons.screen_rotation_outlined),
//   label: Text(vertical ? 'Horizontal' : 'Vertical'),
// ),

//   Drawer

//  const Center(
//      child: Text(
//        'A drawer is an invisible side screen.',
//        style: TextStyle(fontSize: 20.0),
//      )),
// drawer: Drawer(
//   child: ListView(
//     padding: const EdgeInsets.all(0),
//     children: [
//       const DrawerHeader(
//         decoration: BoxDecoration(
//           color: Colors.blue,
//         ), //BoxDecoration
//         child: UserAccountsDrawerHeader(
//           decoration: BoxDecoration(color: Colors.blue),
//           accountName: Text(
//             "Bhavin Makwana",
//             style: TextStyle(fontSize: 18),
//           ),
//           accountEmail: Text("bhavin143@gmail.com"),
//           currentAccountPictureSize: Size.square(50),
//           currentAccountPicture: CircleAvatar(
//             backgroundColor: Color.fromARGB(255, 165, 255, 137),
//             child: Text(
//               "B",
//               style: TextStyle(fontSize: 30.0, color: Colors.blue),
//             ), //Text
//           ), //circleAvatar
//         ), //UserAccountDrawerHeader
//       ), //DrawerHeader
//       ListTile(
//         leading: const Icon(Icons.person),
//         title: const Text(' My Profile '),
//         onTap: () {
//           Navigator.pop(context);
//         },
//       ),
//       ListTile(
//         leading: const Icon(Icons.book),
//         title: const Text(' My Course '),
//         onTap: () {
//           Navigator.pop(context);
//         },
//       ),
//       ListTile(
//         leading: const Icon(Icons.workspace_premium),
//         title: const Text(' Go Premium '),
//         onTap: () {
//           Navigator.pop(context);
//         },
//       ),
//       ListTile(
//         leading: const Icon(Icons.video_label),
//         title: const Text(' Saved Videos '),
//         onTap: () {
//           Navigator.pop(context);
//         },
//       ),
//       ListTile(
//         leading: const Icon(Icons.edit),
//         title: const Text(' Edit Profile '),
//         onTap: () {
//           Navigator.pop(context);
//         },
//       ),
//       ListTile(
//         leading: const Icon(Icons.logout),
//         title: const Text('LogOut'),
//         onTap: () {
//           Navigator.pop(context);
//         },
//       ),
//     ],
//   ),
// ), //Drawer

//  shadermask

// Center(
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       // Original Image
//       Image.network(
//         'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20220512131412/Student-Chapter-Article-Banner.png',
//         width: 300.0,
//         height: 300.0,
//         fit: BoxFit.cover,
//       ),
//       Text("Original Image",
//           style: TextStyle(fontWeight: FontWeight.bold)),
//
//       SizedBox(height: 20.0), // Add some spacing between the images
//
//       // Image with ShaderMask
//       ShaderMask(
//         shaderCallback: (Rect bounds) {
//           // Create a linear gradient shader for the mask
//           return LinearGradient(
//             colors: [Colors.red, Colors.blue],
//             stops: [0.5, 0.9],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ).createShader(bounds);
//         },
//         child: Image.network(
//           'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20220512131412/Student-Chapter-Article-Banner.png',
//           width: 300.0,
//           height: 300.0,
//           fit: BoxFit.cover,
//         ),
//       ),
//       Text(
//         "Shadered Image",
//         style: TextStyle(fontWeight: FontWeight.bold),
//       )
//     ],
//   ),
// ),

// Padding(
//   padding: const EdgeInsets.all(20.0),
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: <Widget>[
//       Text(
//         'Circular progress indicator with a fixed color',
//         style: Theme.of(context).textTheme.titleLarge,
//       ),
//       CircularProgressIndicator(
//         value: controller.value,
//         semanticsLabel: 'Circular progress indicator',
//       ),
//     ],
//   ),
// ),
// Container(
//   child: SafeArea(
//     child: RawMaterialButton(
//       onPressed: () {
//         showDialog(
//           builder: (context) => AboutDialog(
//             applicationName: "Demo",
//             applicationIcon: Icon(Icons.tv),
//             applicationVersion: "1.0",
//             applicationLegalese: "© Copyright Michelphoenix 2020",
//             children: <Widget>[
//               Text("This is a demo."),
//             ],
//           ), context: context,
//         );
//       },
//       child: Text("Display"),
//     ),
//   ),
// ),
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

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              color: Colors.orange,
              height: 200,
              width: 150,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              width: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              color: Colors.green,
              height: 200,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}


//  cliprect

// class ClipRRectExample extends StatelessWidget {
//   const ClipRRectExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     const TextStyle style = TextStyle(color: Colors.white);
//
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Container(
//             alignment: Alignment.center,
//             constraints: const BoxConstraints(
//               maxWidth: 300,
//               maxHeight: 100,
//             ),
//             color: Colors.blue,
//             child: const Text('No ClipRRect', style: style),
//           ),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(30.0),
//             child: Container(
//               alignment: Alignment.center,
//               constraints: const BoxConstraints(
//                 maxWidth: 300,
//                 maxHeight: 100,
//               ),
//               color: Colors.green,
//               child: const Text('ClipRRect', style: style),
//             ),
//           ),
//           ClipRRect(
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(10.0),
//               topRight: Radius.circular(20.0),
//               bottomRight: Radius.circular(30.0),
//               bottomLeft: Radius.circular(40.0),
//             ),
//             child: Container(
//               alignment: Alignment.center,
//               constraints: const BoxConstraints(
//                 maxWidth: 300,
//                 maxHeight: 100,
//               ),
//               color: Colors.purple,
//               child: const Text('ClipRRect', style: style),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// table

// class DataTableExample extends StatelessWidget {
//   const DataTableExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return DataTable(
//       columns: const <DataColumn>[
//         DataColumn(
//           label: Expanded(
//             child: Text(
//               'Name',
//               style: TextStyle(fontStyle: FontStyle.italic),
//             ),
//           ),
//         ),
//         DataColumn(
//           label: Expanded(
//             child: Text(
//               'Age',
//               style: TextStyle(fontStyle: FontStyle.italic),
//             ),
//           ),
//         ),
//         DataColumn(
//           label: Expanded(
//             child: Text(
//               'Role',
//               style: TextStyle(fontStyle: FontStyle.italic),
//             ),
//           ),
//         ),
//       ],
//       rows: const <DataRow>[
//         DataRow(
//           cells: <DataCell>[
//             DataCell(Text('Sarah')),
//             DataCell(Text('19')),
//             DataCell(Text('Student')),
//           ],
//         ),
//         DataRow(
//           cells: <DataCell>[
//             DataCell(Text('Janine')),
//             DataCell(Text('43')),
//             DataCell(Text('Professor')),
//           ],
//         ),
//         DataRow(
//           cells: <DataCell>[
//             DataCell(Text('William')),
//             DataCell(Text('27')),
//             DataCell(Text('Associate Professor')),
//           ],
//         ),
//       ],
//     );
//   }
// }

//  snackbar

// class SnackBarPage extends StatelessWidget {
//   const SnackBarPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           final snackBar = SnackBar(
//             content: const Text('Yay! A SnackBar!'),
//             action: SnackBarAction(
//               label: 'Undo',
//               onPressed: () {
//                 // Some code to undo the change.
//               },
//             ),
//           );
//
//           // Find the ScaffoldMessenger in the widget tree
//           // and use it to show a SnackBar.
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         },
//         child: const Text('Show SnackBar'),
//       ),
//     );
//   }
// }

//        Divider class

// class DividerExample extends StatelessWidget {
//   const DividerExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: <Widget>[
//           const Expanded(
//             child: ColoredBox(
//               color: Colors.amber,
//               child: Center(
//                 child: Text('Above'),
//               ),
//             ),
//           ),
//           const Divider(
//             height: 20,
//             thickness: 5,
//             indent: 20,
//             endIndent: 20,
//             color: Colors.black,
//
//           ),
//
//           Expanded(
//             child: ColoredBox(
//               color: Theme.of(context).colorScheme.primary,
//               child: const Center(
//                 child: Text('Below'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

