import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form/login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyCBqa1phIOrNpVHbwZrXPdG2U8fqCypdUQ",
        appId: "1:703750091909:android:4d00cbd3e9a9a51619a5ec",
        messagingSenderId: "703750091909",
        projectId: "form-c3a28",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
debugShowCheckedModeBanner: false,
     initialRoute: 'Login',
     title: "Demo",
     home: loginWidget(),


   );
  }
}





