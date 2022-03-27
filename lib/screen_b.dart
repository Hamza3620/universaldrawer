import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen B"),
      ),
      drawer: const Drawer(
        child: Text("NEW DRAWER"),
      ),
      body: const Center(
        child: Text("Screen B"),
      ),
    );
  }
}
