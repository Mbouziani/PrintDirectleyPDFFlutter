import 'package:flutter/material.dart';
import 'package:flutter_testprinterapp/mypdf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ElevatedButton(
            //   child: const Text('Print PDF'),
            //   onPressed: () {
            //     MyPDFClass.printPdf();
            //   },
            // ),
            ElevatedButton(
              child: const Text('Print 2 PDF'),
              onPressed: () {
                MyPDFClass.printPdf();
              },
            ),
          ],
        ),
      ),
    );
  }
}
