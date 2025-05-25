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

  List pageTitles = ['Dashboard', 'Bags', '', 'Events', 'Profile'];

  ColorFilter iconColorFilter = ColorFilter.mode(Colors.black, BlendMode.srcIn);

  var startWalkIconAsset = SvgPicture.asset('assets/SVG/blind.svg', semanticsLabel: 'Start Walk Icon', colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn));

  static final List<Widget> _pages = <Widget>[Homepage(), Center(child: Text('Walks')), Center(child: Text('Bags')), Container(), Center(child: Text('Profile')), Center(child: Text('Profile'))];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTitles[_selectedIndex])),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24, child: SvgPicture.asset('assets/SVG/paw.svg', semanticsLabel: 'Home', colorFilter: iconColorFilter)), label: 'Home'),
          BottomNavigationBarItem(
            icon: SizedBox(height: 24, width: 24, child: SvgPicture.asset('assets/SVG/walking-the-dog.svg', semanticsLabel: 'Bags', colorFilter: iconColorFilter)),
            label: 'Bags',
          ),
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24, child: Container()), label: ''),
          BottomNavigationBarItem(
            icon: SizedBox(height: 24, width: 24, child: SvgPicture.asset('assets/SVG/walking-the-dog.svg', semanticsLabel: 'Events', colorFilter: iconColorFilter)),
            label: 'Bags',
          ),
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24, child: SvgPicture.asset('assets/SVG/user.svg', semanticsLabel: 'Profile', colorFilter: iconColorFilter)), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 0.0, top: 16.0, right: 0.0, bottom: 0.0),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            shape: CircleBorder(side: BorderSide(color: Colors.white, width: 2)),
            backgroundColor: Colors.blue,
            onPressed: () {
              // Add your onPressed code here!
            },
            elevation: 0,
            child: Padding(padding: const EdgeInsets.all(18.0), child: startWalkIconAsset),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
