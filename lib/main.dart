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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
//{ return _MyHomePageState();   }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get floatingActionButton => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _multiplytCounter() {
    setState(() {
      _counter*=10;
    });
  }
  void _decrementCounter() {
    setState(() {
      if (_counter < 1) {
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
                style: TextStyle(color: Colors.cyanAccent
                    // color: Theme.of(context).colorScheme.inversePrimary,
                    ),
              ),
              Text(
                '$_counter ',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.minimize),
                //child: const Icon(Icons.add_box),
                // child:Text("hijibiji")
              ),
              FloatingActionButton(
                onPressed: _multiplytCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.multiple_stop),
                //child: const Icon(Icons.add_box),
                // child:Text("hijibiji")
              ),
            ] // This trailing comma makes auto-formatting nicer for build methods.
            ));
  }
}
