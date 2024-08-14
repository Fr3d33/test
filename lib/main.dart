import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String enteredName = '';
  String enteredAge = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Einfache Textspeicherung'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  enteredName = text;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Geben Sie ihren Namen ein',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (text) {
                setState(() {
                  enteredAge = text;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Geben Sie ihr Alter ein',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(
                    "Eingegebener Name: $enteredName, Eingegebenes Alter: $enteredAge");
              },
              child: const Text('Text ausgeben'),
            ),
          ],
        ),
      ),
    );
  }
}
