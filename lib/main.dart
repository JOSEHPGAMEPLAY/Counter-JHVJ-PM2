import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int one = 0;
  int two = 0;
  int three = 0;
  int four = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Counters')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Card(
                    semanticContainer: true,
                    child: Column(
                      children: [
                        Text(
                          '$one',
                          style: const TextStyle(fontSize: 150),
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: Colors.teal,
                          onPressed: () {
                            setState(() => one++);
                          },
                          label: const Text('Aumentar'),
                        ),
                        const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Card(
                    semanticContainer: true,
                    child: Column(
                      children: [
                        Text(
                          '$two',
                          style: const TextStyle(fontSize: 150),
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: Colors.teal,
                          onPressed: () {
                            setState(() => two+=2);
                          },
                          label: const Text('Aumentar'),
                        ),
                        const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Card(
                    semanticContainer: true,
                    child: Column(
                      children: [
                        Text(
                          '$three',
                          style: const TextStyle(fontSize: 150),
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: Colors.teal,
                          onPressed: () {
                            setState(() => three+=3);
                          },
                          label: const Text('Aumentar'),
                        ),
                        const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Card(
                    semanticContainer: true,
                    child: Column(
                      children: [
                        Text(
                          '$four',
                          style: const TextStyle(fontSize: 150),
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: Colors.teal,
                          onPressed: () {
                            setState(() => four+=5);
                          },
                          label: const Text('Aumentar'),
                        ),
                        const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15))
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          FloatingActionButton.extended(
            onPressed: () {
              setState(() => {
                    one = 0,
                    two = 0,
                    three = 0,
                    four = 0,
                  });
            },
            label: const Text('Reset'),
          ),
        ]),
      ),
    );
  }
}
