import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawfect_walks/features/home/presentation/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[Homepage(), Center(child: Text('Walks')), Center(child: Text('Bags')), Center(child: Text('Profile'))];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24, child: SvgPicture.asset('assets/SVG/paw.svg', semanticsLabel: 'Home', color: Colors.black)), label: 'Home'),
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24, child: SvgPicture.asset('assets/SVG/blind.svg', semanticsLabel: 'Bags', color: Colors.black)), label: 'Walks'),
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24, child: SvgPicture.asset('assets/SVG/walking-the-dog.svg', semanticsLabel: 'Walks', color: Colors.black)), label: 'Bags'),
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24, child: SvgPicture.asset('assets/SVG/user.svg', semanticsLabel: 'Profile', color: Colors.black)), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
