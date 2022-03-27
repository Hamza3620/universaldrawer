import 'package:flutter/material.dart';
import 'package:universaldrawer/screen_a.dart';
import 'package:universaldrawer/screen_b.dart';
import 'package:universaldrawer/screen_c.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer(this.navigator);
  final GlobalKey<NavigatorState> navigator;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        color: Colors.white,
        child: Column(
          children: [
            const ListTile(
              title: Text("Hamza Abdul Mateen"),
              subtitle: Text("Full Name"),
            ),
            const ListTile(
              title: Text("Software Engineer and Writer"),
              subtitle: Text("Profession"),
            ),
            const ListTile(
              title: Text("Pakistan"),
              subtitle: Text("Country"),
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              onTap: () {
                Navigator.of(navigator.currentContext!).push(
                    MaterialPageRoute(builder: (context) => const ScreenA()));
              },
              title: const Text("Go to Screen A"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(navigator.currentContext!).push(
                    MaterialPageRoute(builder: (context) => const ScreenB()));
              },
              title: const Text("Go to Screen B"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(navigator.currentContext!).push(
                    MaterialPageRoute(builder: (context) => const ScreenC()));
              },
              title: const Text("Go to Screen C"),
            )
          ],
        ),
      ),
    );
  }
}
