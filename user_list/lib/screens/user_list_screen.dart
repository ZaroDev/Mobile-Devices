import 'package:flutter/material.dart';
import 'package:user_list/modal/user.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<User>? userList;

  @override
  void initState() {
    loadUserList().then((loadedUserList) {
      setState(() {
        userList = loadedUserList;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (userList == null) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text("User List")),
      body: ListView.builder(
          itemCount: userList!.length,
          itemBuilder: (context, index) {
            final user = userList![index];
            return UserWidget(user: user);
          }),
    );
  }
}

class UserWidget extends StatelessWidget {
  const UserWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl)),
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Text(user.nationality),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/user-details',
          arguments: user,
        );
      },
    );
  }
}
