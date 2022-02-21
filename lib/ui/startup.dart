import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Startup());
}

class Startup extends StatelessWidget {
  const Startup({Key? key}) : super(key: key);

  _newPDF() {
    // ignore: avoid_print
    print('new PDF button is clicked');
  }

  _modifyOld() {
    // ignore: avoid_print
    print('modify PDF button is clicked');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF Helper',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Welcome')),
        body: Center(child:Column(children: [
          FloatingActionButton.extended(
            onPressed: _newPDF,
            label: const Text('Make new PDF'),
          ),
          FloatingActionButton.extended(
            onPressed: _modifyOld,
            label: const Text('Modify Existing PDF'),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
      ),)
    ),
    );
  }
}
