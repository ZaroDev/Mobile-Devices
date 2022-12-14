import 'package:flutter/material.dart';
import 'package:user_list/screens/user_details_screen.dart';
import 'package:user_list/screens/user_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => UserListScreen(),
        '/user-details': (context) => UserDetailsScreen(),
      },
    );
  }
}
