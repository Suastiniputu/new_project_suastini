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
      theme: ThemeData(
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
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft, // Menempatkan teks di sebelah kiri
            child: Text(
              "Pembimbing Akademik (PA)",
              // style: TextStyle(fontSize: 20),
            ),
          ),
          ClipOval(
            child: Image.network(
              "https://www.shutterstock.com/image-illustration/cute-ghosts-hand-drawings-unique-260nw-2203679801.jpg",
              height: 200, // Disesuaikan agar proporsional dengan bentuk bulat
              width: 200,
              fit: BoxFit.cover, // Menyesuaikan gambar dengan bingkai bulat
            ),
          ),
          Row(
            children: [
              Icon(Icons.person),
              Text("Ni Putu Suastini"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.email),
              Text("psuastini28@gmail.com"),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
