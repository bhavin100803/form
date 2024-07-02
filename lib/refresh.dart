import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class refreshWidget extends StatefulWidget {
  const refreshWidget({super.key});

  @override
  State<refreshWidget> createState() => _refreshWidgetState();
}

class _refreshWidgetState extends State<refreshWidget> {
  List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  Future<void> _refreshData() async {
    // Simulate a delay to mimic fetching new data from a data source
    await Future.delayed(Duration(seconds: 2));

    // Add new items or update the data here
    setState(() {
      items = List.generate(20, (index) => 'New Item ${index + 1}');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Practices'),
    backgroundColor: Colors.grey,
        ),
            body:RefreshIndicator(
              onRefresh: _refreshData, // Callback function for refresh action
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]),
                  );
                },
              ),
            ),
    );
  }
}
