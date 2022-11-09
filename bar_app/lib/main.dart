import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BarScreen(),
    );
  }
}

class BarScreen extends StatefulWidget {
  const BarScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<BarScreen> createState() => _BarScreenState();
}

class _BarScreenState extends State<BarScreen> {
  List<Dish> dishes = [];
  List<Dish> filteredList = [];
  bool filter = false;
  Type? filterMenu;
  late TextEditingController nameController;
  late TextEditingController priceController;
  Type? selectedMenu;
  @override
  void initState() {
    nameController = TextEditingController();
    priceController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bar app")),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final dish = await showDialog<Dish>(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Dish"),
                content: Column(
                  children: [
                    TextField(
                      autofocus: true,
                      controller: nameController,
                      decoration:
                          const InputDecoration(label: Text("Enter dish name")),
                    ),
                    TextField(
                      controller: priceController,
                      decoration: const InputDecoration(
                          label: Text("Enter dish price")),
                    ),
                    const SizedBox(height: 20),
                    PopupMenuButton<Type>(
                      initialValue: selectedMenu,
                      child: const Text("Dish type"),
                      onSelected: (Type item) {
                        setState(() {
                          selectedMenu = item;
                        });
                      },
                      itemBuilder: (context) => <PopupMenuEntry<Type>>[
                        const PopupMenuItem<Type>(
                          value: Type.first,
                          child: Text("First"),
                        ),
                        const PopupMenuItem<Type>(
                          value: Type.second,
                          child: Text("Second"),
                        ),
                        const PopupMenuItem<Type>(
                          value: Type.dessert,
                          child: Text("Dessert"),
                        ),
                      ],
                    )
                  ],
                ),
                actions: [
                  TextButton(
                    child: const Text("Create"),
                    onPressed: () {
                      selectedMenu ??= Type.first;
                      Dish newDish = Dish(
                        nameController.text,
                        selectedMenu!,
                        double.parse(priceController.text),
                      );
                      Navigator.of(context).pop(newDish);
                    },
                  ),
                ],
              ),
            );
            setState(() {
              dishes.add(Dish(dish!.name, dish.type, dish.price));
              nameController.clear();
              priceController.clear();
            });
          },
          child: const Icon(Icons.add)),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemCount: dishes.length,
            itemBuilder: (context, index) => ElevatedButton(
              onPressed: () async {
                final delete = await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Do you want to delete this dish?"),
                    content: Text("This action can't be undone!"),
                    actions: [
                      ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: Text("Accept")),
                      ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: Text("Cancel")),
                    ],
                  ),
                );
                setState(() {
                  if (delete) {
                    dishes.removeAt(index);
                  }
                });
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Name: ${dishes[index].name}"),
                    Text("Price: ${dishes[index].price} €"),
                    Text(dishes[index].type == Type.first
                        ? "First"
                        : dishes[index].type == Type.second
                            ? "Second"
                            : "Dessert"),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: PopupMenuButton<Type>(
                initialValue: selectedMenu,
                child: Icon(Icons.filter),
                onSelected: (Type item) {
                  setState(() {
                    selectedMenu = item;
                  });
                },
                itemBuilder: (context) => <PopupMenuEntry<Type>>[
                  const PopupMenuItem<Type>(
                    value: Type.first,
                    child: Text("First"),
                  ),
                  const PopupMenuItem<Type>(
                    value: Type.second,
                    child: Text("Second"),
                  ),
                  const PopupMenuItem<Type>(
                    value: Type.dessert,
                    child: Text("Dessert"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum Type { first, second, dessert }

class Dish {
  String name;
  Type type;
  double price;

  Dish(this.name, this.type, this.price);
}
