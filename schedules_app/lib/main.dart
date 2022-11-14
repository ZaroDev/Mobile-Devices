import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Counter {
  String name;
  int count = 0;
  Counter(this.name);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const AppScreen(),
        '/edit': (context) => const EditScreen(),
      },
    );
  }
}

class EditScreen extends StatefulWidget {
  const EditScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("New counter...")),
      body: Center(
        child: Column(children: [
          TextField(
            controller: controller,
            autofocus: true,
            decoration: const InputDecoration(label: Text("Word")),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(controller.text);
              controller.clear();
            },
            child: const Text("Add"),
          ),
        ]),
      ),
    );
  }
}

class AppScreen extends StatefulWidget {
  const AppScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  List<Counter> counters = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/edit').then((value) {
            if (value != null) {
              setState(() {
                counters.add(Counter(value as String));
              });
            }
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text("Counter List"), actions: [
        IconButton(
            onPressed: () async {
              final accept = await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Do you want to reset all counters?"),
                  content: const Text("This action can't be undone!"),
                  actions: [
                    ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text("Accept")),
                    ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text("Cancel")),
                  ],
                ),
              );
              setState(() {
                if (accept) {
                  for (Counter c in counters) {
                    c.count = 0;
                  }
                }
              });
            },
            icon: const Icon(Icons.refresh))
      ]),
      body: counters.isEmpty
          ? const Center(child: Text("There's no elements"))
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemCount: counters.length,
              itemBuilder: (context, index) => Column(children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        counters[index].count++;
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        if (counters[index].count > 0) {
                          counters[index].count--;
                        }
                      });
                    },
                    child: SizedBox(
                      width: 90,
                      height: 90,
                      child: Center(
                          child: Text(
                        "${counters[index].count}",
                        style: const TextStyle(fontSize: 30),
                      )),
                    ),
                  ),
                ),
                Text(counters[index].name),
              ]),
            ),
    );
  }
}
