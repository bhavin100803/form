import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class slidebleeWidget extends StatefulWidget {
  const slidebleeWidget({super.key});

  @override
  State<slidebleeWidget> createState() => _practiceWidgetState();
}

class _practiceWidgetState extends State<slidebleeWidget> with SingleTickerProviderStateMixin{
  List myList = ["India", "Nepal", "Sri Lanka", "America", "United Kingdom"];

  late final controller = SlidableController(this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body:ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Slidable(
            key: const ValueKey(0),

            startActionPane: ActionPane(
              motion: const ScrollMotion(),

              dismissible: DismissiblePane(onDismissed: () {}),

              children: const [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFF21B7CA),
                  foregroundColor: Colors.white,
                  icon: Icons.share,
                  label: 'Share',
                ),
              ],
            ),

            endActionPane:  ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  flex: 2,
                  onPressed: (_) => controller.openEndActionPane(),
                  backgroundColor: const Color(0xFF7BC043),
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'Archive',
                ),
                SlidableAction(
                  onPressed: (_) => controller.close(),
                  backgroundColor: const Color(0xFF0392CF),
                  foregroundColor: Colors.white,
                  icon: Icons.save,
                  label: 'Save',
                ),
              ],
            ),

            child: const ListTile(title: Text('Slide me')),
          );
        },
      ),
    );
  }
}
  void doNothing(BuildContext context) {}


      // myList.isNotEmpty
      //     ? ListView.builder(
      //   itemCount: myList.length,
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Slidable(
      //         key: const ValueKey(0),
      //         endActionPane: ActionPane(
      //           dismissible: DismissiblePane(onDismissed: () {
      //             // we can able to perform to some action here
      //           }),
      //           motion: const DrawerMotion(),
      //           children: [
      //             SlidableAction(
      //               autoClose: true,
      //               flex: 1,
      //               onPressed: (value) {
      //                 myList.removeAt(index);
      //                 setState(() {});
      //               },
      //               backgroundColor: Colors.red,
      //               foregroundColor: Colors.white,
      //               icon: Icons.delete,
      //               label: 'Delete',
      //             ),
      //             SlidableAction(
      //               autoClose: true,
      //               flex: 1,
      //               onPressed: (value) {
      //                 myList.removeAt(index);
      //                 setState(() {});
      //               },
      //               backgroundColor: Colors.blueAccent,
      //               foregroundColor: Colors.white,
      //               icon: Icons.edit,
      //               label: 'Edit',
      //             ),
      //           ],
      //         ),
      //         child: Container(
      //           color: Colors.yellow,
      //           width: MediaQuery.of(context).size.width,
      //           height: 50,
      //           child: Center(
      //               child: Text(
      //                 myList[index],
      //                 style: const TextStyle(
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.bold,
      //                     fontSize: 18),
      //               )),
      //         ),
      //       ),
      //     );
      //   },
      // )
      //     : const Center(
      //   child: Text("Your List is Empty",
      //       style: TextStyle(
      //           color: Colors.black,
      //           fontWeight: FontWeight.bold,
      //           fontSize: 18)),
      // ),

    // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     const SizedBox(height: 20.0),
      //     ListTile(
      //       leading: const Hero(
      //         tag: 'hero-rectangle',
      //         child: BoxWidget(size: Size(50.0, 50.0)),
      //       ),
      //       onTap: () => _gotoDetailsPage(context),
      //       title: const Text(
      //         'Tap on the icon to view hero animation transition.',
      //       ),
      //     ),
      //   ],
      // ),





// void _gotoDetailsPage(BuildContext context) {
//   Navigator.of(context).push(MaterialPageRoute<void>(
//     builder: (BuildContext context) => Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Page'),
//       ),
//       body: const Center(
//         child: Hero(
//           tag: 'hero-rectangle',
//           child: BoxWidget(size: Size(200.0, 200.0)),
//         ),
//       ),
//     ),
//   ));
// }
//
//
// class BoxWidget extends StatelessWidget {
//   const BoxWidget({super.key, required this.size});
//
//   final Size size;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: size.width,
//       height: size.height,
//       color: Colors.blue,
//     );
//   }
// }

