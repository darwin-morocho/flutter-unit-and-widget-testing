import 'package:flutter/material.dart';

class TabsView extends StatelessWidget {
  const TabsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            labelStyle: TextStyle(fontSize: 20),
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
              child: Text(
                'content 1',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Center(
              child: Text(
                'content 2',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Center(
              child: Text(
                'content 3',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
