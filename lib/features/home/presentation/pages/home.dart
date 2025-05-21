import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: const Center(child: Text('Welcome to Homepage!')),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Padding(padding: const EdgeInsets.all(12.0), child: SvgPicture.asset('assets/SVG/blind.svg', semanticsLabel: 'Start Walk Icon', color: Colors.white)),
      ),
    );
  }
}
