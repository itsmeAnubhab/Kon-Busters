import 'package:flutter/material.dart';

import '../components/post_items.dart';
import '../components/toolbar.dart';
import '../config/app_strings.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.history,
        actions: [
          PopupMenuButton(
            onSelected: (value) {},
            icon: const Icon(Icons.sort),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Text(AppStrings.sortTime),
                    ],
                  ),
                  //value: use enum,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Text(AppStrings.sortName),
                    ],
                  ),
                  //value: use enum,
                ),
              ];
            },
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItems(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 24,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i <= 100; i++) {
      users.add("Account name searched");
    }
  }
}
