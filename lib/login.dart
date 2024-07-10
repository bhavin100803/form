import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class loginWidget extends StatefulWidget {
  const loginWidget({super.key});

  @override
  State<loginWidget> createState() => _loginWidgetState();
}

class _loginWidgetState extends State<loginWidget> {
  String? validPhone(String? value) {
    const pattern = r'[7,8,9][0-9]{9}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter Valid Phone Number like start with "7,8,9"'
        : null;
  }

  String? validatePassword(String? value) {
    const pattern = r'[A-Za-z0-9!@#\$&*~]{6,}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid password, Minimum 6 number'
        : null;
  }

  String? validatepincode(String? value) {
    const pattern = r'[1-9][0-9]{5}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter valid pin code like "123456"'
        : null;
  }

  String? validateemail(String? value) {
    const pattern = r'[a-z0-9_\-]+[@][a-z]+[\.][a-z]{2,3}';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter valid email address like "xyz@demo.com"'
        : null;
  }

  final nameController = TextEditingController();
  final passController = TextEditingController();
  final pinController = TextEditingController();
  final addsController = TextEditingController();
  final EmainController = TextEditingController();
  final phoneController = TextEditingController();
  final databaseref = FirebaseDatabase.instance.ref("Form");
  int _selectedvalue = 1;

  // var selectedValue;

  String citydropdownvalue = "Ahmedabad";
  String dropdownvalue = "Gujrat";

  var city = [
    "Ahmedabad",
    "Rajkot",
    "Bhopal",
    "Indore",
    "Amravati",
    "Vizag",
    "Chandigarh",
    "Ludhiana"
  ];

  var state = ["Gujrat", "Madhya Pradesh", "Punjab", "Andhra pradesh"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          color: Colors.blue.shade200,
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
            child: Column(
              children: [
                TextField(
                  cursorColor: Colors.black,
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    filled: true,
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(21),
                    //   borderSide:
                    //       BorderSide(width: 2, color: Colors.black),
                    // )
                  ),
                  style: commontextstyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter City',
                      filled: true,
                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(21),
                      //   borderSide: const BorderSide(
                      //       color: Colors.black, width: 2),
                      // )
                    ),
                    style: commontextstyle(),
                    value: citydropdownvalue,
                    items: city.map((String item) {
                      return DropdownMenuItem(value: item, child: Text(item));
                    }).toList(),
                    onChanged: (String? newVlaue) {
                      setState(() {
                        citydropdownvalue = newVlaue!;
                      });
                    }),
                SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter State',
                      filled: true,
                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(21),
                      //   borderSide: const BorderSide(
                      //       color: Colors.black, width: 2),
                      // )
                    ),
                    style: commontextstyle(),
                    value: dropdownvalue,
                    items: state.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    }),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLength: 6,
                  validator: validatepincode,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  cursorColor: Colors.black,
                  controller: pinController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    counter: Offstage(),
                    hintText: 'Pin Code',
                    filled: true,
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(21),
                    //   borderSide:
                    //       BorderSide(width: 2, color: Colors.black),
                    // )
                  ),
                  style: commontextstyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorColor: Colors.black,
                  controller: addsController,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    filled: true,
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(21),
                    //   borderSide:
                    //       BorderSide(width: 2, color: Colors.black),
                    // )
                  ),
                  style: commontextstyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  validator: validateemail,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  controller: EmainController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    // focusedBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(21),
                    //     borderSide:
                    //         BorderSide(color: Colors.black, width: 2)
                    // )
                  ),
                  style: commontextstyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLength: 50,
                  autovalidateMode: AutovalidateMode.always,
                  validator: validatePassword,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.singleLineFormatter,
                  ],
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  controller: passController,
                  obscureText: false,
                  decoration: InputDecoration(
                    counter: Offstage(),
                    hintText: 'Password',
                    filled: true,
                    // focusedBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(21),
                    //     borderSide:
                    //         BorderSide(color: Colors.black, width: 2)
                    // )
                  ),
                  style: commontextstyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  validator: validPhone,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  cursorColor: Colors.black,
                  controller: phoneController,
                  decoration: InputDecoration(
                    counter: Offstage(),
                    hintText: 'Phone',
                    filled: true,
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(21),
                    //   borderSide:
                    //       BorderSide(width: 2, color: Colors.black),
                    // )
                  ),
                  style: commontextstyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Gender', style: commontextstyle()),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: RadioListTile(
                                    value: 1,
                                    groupValue: _selectedvalue,
                                    title: Text("Male"),
                                    onChanged: (newValue) => setState(
                                        () => _selectedvalue = newValue!),
                                    activeColor: Colors.black,
                                    selected: false,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: RadioListTile(
                                    value: 2,
                                    groupValue: _selectedvalue,
                                    title: Text("Female"),
                                    onChanged: (newValue) => setState(
                                        () => _selectedvalue = newValue!),
                                    activeColor: Colors.black,
                                    selected: false,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      if (nameController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Please Enter your name'),
                          duration: Duration(seconds: 2),
                        ));
                        return;
                      } else if (citydropdownvalue.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Please enter city'),
                          duration: Duration(seconds: 2),
                        ));
                        return;
                      } else if (dropdownvalue.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Place enter state'),
                          duration: Duration(seconds: 2),
                        ));
                        return;
                      } else if (pinController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Please enter pin code'),
                          duration: Duration(seconds: 2),
                        ));
                        return;
                      } else if (addsController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Please enter address'),
                          duration: Duration(seconds: 2),
                        ));
                        return;
                      } else if (EmainController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Please enter email'),
                          duration: Duration(seconds: 2),
                        ));
                        return;
                      } else if (passController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Please enter password'),
                          duration: Duration(seconds: 2),
                        ));
                        return;
                      } else if (phoneController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Please enter phone'),
                          duration: Duration(seconds: 2),
                        ));
                        return;
                      }
                      // print("Name: " + nameController.text.toString());
                      // print("City: " + citydropdownvalue);
                      // print("State: " + dropdownvalue);
                      // print("Pin Code: " + pinController.text.toString());
                      // print("Address: " + addsController.text.toString());
                      // print("Email: " + EmainController.text.toString());
                      // print("Password: " + passController.text.toString());
                      // print("Phone no " + phoneController.text.toString());
                      var Gender = "";
                      if (_selectedvalue == 1) {
                        Gender = "male";
                      } else if (_selectedvalue == 2) {
                        Gender = "Female";
                      }
                      // print("Gender: " + Gender.toString());
                      // databaseref.set({
                      //   "name": nameController.text.toString(),
                      //   "city": citydropdownvalue.toString(),
                      //   "state": dropdownvalue.toString(),
                      //   "pin Code": pinController.text.toString(),
                      //   "address": addsController.text.toString(),
                      //   "email": EmainController.text.toString(),
                      //   "password": passController.text.toString(),
                      //   "Phone": phoneController.text.toString(),
                      //   "gender": Gender.toString()
                      // });
                      databaseref
                          .child(DateTime.now().microsecond.toString())
                          .child("Details")
                          .set({
                        'name': nameController.text.toUpperCase().toString(),
                        'city': citydropdownvalue.toUpperCase().toString(),
                        'state': dropdownvalue.toUpperCase().toString(),
                        'pin code': pinController.text.toUpperCase().toString(),
                        'address': addsController.text.toUpperCase().toString(),
                        'email': EmainController.text.toUpperCase().toString(),
                        'password':
                            passController.text.toUpperCase().toString(),
                        'phone': phoneController.text.toString(),
                        'gender': Gender.toUpperCase().toString(),
                        'id': DateTime.now().microsecond.toString(),
                      });
                      nameController.clear();
                      pinController.clear();
                      addsController.clear();
                      EmainController.clear();
                      passController.clear();
                      phoneController.clear();
                      FocusScope.of(context).unfocus();
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle commontextstyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
  }
}
