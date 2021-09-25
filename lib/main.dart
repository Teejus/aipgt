import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AIAPGET',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AIAPGET'),
          centerTitle: true,
          elevation: 10.0,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text("Next"),
                  value: "Next",
                ),
                const PopupMenuItem(
                  child: Text("Privious"),
                  value: "Privious",
                ),
                const PopupMenuItem(
                  child: Text("About"),
                  value: "About",
                ),
                const PopupMenuItem(
                  child: Text("Notification"),
                  value: "Notification",
                ),
                const PopupMenuItem(
                  child: Text("Close"),
                  value: "Close",
                ),
              ],
            )
          ],
        ),
        body: FutureBuilder(builder: (ctx, snapshot) {
          return Container(
            child: Column(
              children: [Text("d")],
            ),
          );
        }),
      ),
    );
  }
}
