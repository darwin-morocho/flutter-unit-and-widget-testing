import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_literals_to_create_immutables
          bottom: const TabBar(
            tabs: [
              Tab(text: '1'),
              Tab(text: '2'),
              Tab(text: '3'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("1"),
            ),
            Center(
              child: Text("2"),
            ),
            Center(
              child: Text("3"),
            ),
          ],
        ),
      ),
    );
  }
}
