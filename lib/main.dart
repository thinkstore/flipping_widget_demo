import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:word_book/widgets/flipping_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlippingWidget Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'FlippingWidget Demo App'),
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
  bool _isFlipped = false;

  SizedBox front = const SizedBox(
    height: 300,
    width: 300,
    child: Card(
        child: Center(child: Text("Front....", style: TextStyle( fontSize: 30),)) ),
  );

  SizedBox back = const SizedBox(
    height: 300,
    width: 300,
    child: Card(
        child: Center(child: Text("Back....", style: TextStyle( fontSize: 30),)) ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Gap(30),
            GestureDetector(
              onTap: () => setState(() {
                _isFlipped = !_isFlipped;
              }),
              child: FlippingWidget(
                front : front ,
                back : back ,
                isFlipped : _isFlipped,
              ),
            )
          ],
        ),
      ),
    );
  }
}
