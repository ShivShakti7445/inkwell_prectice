import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("HOME PAGE")
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print('you tap single time ');
          },
          onLongPress: (){
            print('you tap long press ');
          },
          onDoubleTap: (){
            print('you tap double tap ');
          },
          child: Container(
              height: 50,
              width: 150,
              color: Colors.lightBlueAccent,
              child:Center(child: InkWell(
                  onTap:(){
                    print('you tap text ');
                  },
                  child: Text('click me',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w100),)))
          ),
        ),
      ),
    );


    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
