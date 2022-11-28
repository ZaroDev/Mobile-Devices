import 'package:flutter/material.dart';
import 'package:user_list/modal/user.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl),
            minRadius: 80,
          ),
          Text(user.name,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold)),
          Text(user.email)
        ],
      ),
    );
  }
}
