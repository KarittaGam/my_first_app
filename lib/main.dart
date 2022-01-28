import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'แอปบวกลบปุ่ม'),
    );
    // ทดสอบขึ้นกิตฮับ
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter = _counter - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('แอปบวกลบปุ่มนะ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('บวก'),
            ),
            const Text(
              'ฉันกดปุ่มนี้ไปแล้ว:',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.teal,
              ),
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 100.0,
                color: Colors.amber,
              ),
            ),
            const Text(
              'ครั้ง',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.teal,
              ),
            ),
            ElevatedButton(
              onPressed: _decrementCounter,
              child: const Text('ลบ'),
            ),
          ],
        ),
      ),
    );
  }
}
