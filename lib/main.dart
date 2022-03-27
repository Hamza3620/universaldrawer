import 'package:flutter/material.dart';
import 'package:universaldrawer/drawer.dart';
import 'package:universaldrawer/screen_a.dart';
import 'package:universaldrawer/screen_b.dart';
import 'package:universaldrawer/screen_c.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universal Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) {
        return Scaffold(
          drawer: MyDrawer(child!.key as GlobalKey<NavigatorState>),
          body: child,
        );
      },
      home: const MyHomePage(title: 'Universal Drawer Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              RootScaffold.openDrawer(context);
            },
            icon: const Icon(Icons.menu)),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ScreenA()));
              },
              title: const Text(
                "Click here for Screen A",
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ScreenB()));
              },
              title: const Text(
                "Click here for Screen B",
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ScreenC()));
              },
              title: const Text(
                "Click here for Screen C",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RootScaffold {
  static openDrawer(BuildContext context) {
    final ScaffoldState? scaffoldState =
        context.findRootAncestorStateOfType<ScaffoldState>();
    scaffoldState!.openDrawer();
  }
}
