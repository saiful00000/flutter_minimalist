import 'package:flutter/material.dart';
import 'package:flutter_minimalist/flutter_minimalist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          16.verticalSpace, // Equivalent to SizedBox(height: 16)
          // 16.horizontalSpace,
          Container(
            padding: 16.allPadding, // Equivalent to EdgeInsets.all(10)
            // padding: 16.topPadding,
            // padding: 16.bottomPadding,
            // padding: 16.rightPadding,
            // padding: 16.leftPadding,
            margin: 16.allMargin, // Equivalent to EdgeInsets.all(10)
            // margin: 16.topMargin,
            // margin: 16.bottomMargin,
            // margin: 16.rightMargin,
            // margin: 16.leftMargin,
            child: const Text('Be a Minimalist'),
          ),
        ],
      ),
    );
  }
}
