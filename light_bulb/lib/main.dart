import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Bulb {
  String name;
  bool open;
  Bulb(this.name, [this.open = false]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BulbScreen());
  }
}

class BulbScreen extends StatefulWidget {
  const BulbScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<BulbScreen> createState() => _BulbScreenState();
}

class _BulbScreenState extends State<BulbScreen> {
  List<Bulb> bulbs = [];
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final name = await showDialog<String>(
            context: context,
            builder: (context) => AlertDialog(
              content: Column(
                children: [
                  const Text("Create a bulb"),
                  TextField(
                    controller: controller,
                    autofocus: true,
                    decoration: const InputDecoration(label: Text("Bulb name")),
                  ),
                ],
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop("");
                    });
                  },
                  child: const Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(controller.text);
                  },
                  child: const Text("Create"),
                ),
              ],
            ),
          );
          setState(() {
            if (name!.isNotEmpty) {
              bulbs.add(Bulb(name));
            }
            controller.clear();
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text("Ligh bulbs")),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5),
            itemCount: bulbs.length,
            itemBuilder: (context, index) => ElevatedButton(
              onPressed: () {
                setState(() {
                  bulbs[index].open = !bulbs[index].open;
                });
              },
              onLongPress: () async {
                final accept = await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Are you shure you want to delete?"),
                    content: const Text("This action can't be undone!"),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text("Delete"),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text("Cancel"),
                      ),
                    ],
                  ),
                );
                setState(() {
                  if (accept) {
                    bulbs.removeAt(index);
                  }
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(bulbs[index].name),
                  Icon(bulbs[index].open
                      ? Icons.light_mode
                      : Icons.light_mode_outlined),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              onPressed: () {
                setState(
                  () {
                    for (Bulb b in bulbs) {
                      if (b.open) {
                        b.open = false;
                      }
                    }
                  },
                );
              },
              child: const Icon(Icons.light_mode_outlined),
            ),
          )
        ],
      ),
    );
  }
}
