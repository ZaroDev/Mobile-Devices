import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class Counter {
  final int id;
  int count = 10;
  Counter(this.id);
}

class _CounterScreenState extends State<CounterScreen> {
  int lastID = 0;
  List<Counter> counters = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counters.add(Counter(++lastID));
          });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: counters.length,
        itemBuilder: (context, index) => ListTile(
          title: Text("Counter ${counters[index].count}"),
          trailing: Text("${counters[index].id}"),
          onTap: () {
            setState(() {
              counters[index].count--;
              if (counters[index].count <= 0) {
                counters.removeAt(index);
              }
            });
          },
        ),
      ),
    );
  }
}
