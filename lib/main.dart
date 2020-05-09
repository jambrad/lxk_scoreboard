import 'package:device_preview/device_preview.dart';
import 'package:lxk_scoreboard/assets/scoreboard_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:lxk_scoreboard/views/home/home_view.dart';

void main() => runApp(DevicePreview(
        child: MaterialApp(
      home: App(),
    )));

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 1;

  //TODO: Replace with actual pages/widgets. For visual purpose only.
  List<Widget> pages = [
    // Container(child: Center(child: Text('Standings'))),
    HomeView(),
    // Container(child: Center(child: Text('Schedule')))
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            centerTitle: true,
            title: appBarTitle()),
        body: pages[0],
        bottomNavigationBar: bottomNavBar(),
      ),
    );
  }

  Widget appBarTitle() {
    /***
     * Renders the widget displayed in the center of the AppBar, aka the title.
     */
    return Column(
      // Use column to align the Title and the Subtitle vertically.
      children: <Widget>[
        Text('R&D Sportsfest 2020',
            style: TextStyle(fontWeight: FontWeight.bold)),
        RichText(
          // RichText to be able to customize different words.
          text: TextSpan(
              style: TextStyle(
                  fontWeight: FontWeight.w300, // Makes the text slimmer
                  fontSize: 17,
                  color: Colors.white),
              children: <TextSpan>[
                TextSpan(text: "Ready. Set. "),
                TextSpan(
                    text: "ACCELERATE.",
                    style: TextStyle(fontStyle: FontStyle.italic))
              ]),
        )
      ],
    );
  }

  Widget bottomNavBar() {
    /**
     * Renders the bottom navigation bar of the app.
     */
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.lightBlue[900],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white60,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text("Standings"),
          icon: Icon(ScoreboardIcons.trophy),
        ),
        BottomNavigationBarItem(
          title: Text("Home"),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text("Schedule"),
          icon: Icon(Icons.calendar_today),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          this._currentIndex = index;
        });
      },
    );
  }
}
