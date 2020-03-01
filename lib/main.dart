import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: App(),
));

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  int _currentIndex = 1;

  Widget appBarTitle(){
    /***
     * Renders the widget displayed in the center of the AppBar, aka the title.
     */
    return Column( // Use column to align the Title and the Subtitle vertically.
      children: <Widget>[
        Text(
            'R&D Sportsfest 2020',
            style: TextStyle(
                fontWeight: FontWeight.bold
            )
        ),
        RichText( // RichText to be able to customize different words.
          text: TextSpan(
              style: TextStyle(
                  fontWeight: FontWeight.w300, // Makes the text slimmer
                  fontSize: 17,
                  color: Colors.white
              ),
              children: <TextSpan>[
                TextSpan(text: "Ready. Set. "),
                TextSpan(
                    text: "ACCELARATE.",
                    style: TextStyle(fontStyle: FontStyle.italic)
                )
              ]
          ),
        )
      ],
    );
  }

  Widget bottomNavBar(){
    /**
     * Renders the bottom navigation bar of the app.
     */
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.lightBlue[900],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white60,
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          title: Text("Standings"),
          icon: Icon(Icons.assessment),
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
      onTap: (index){
        setState(() {
          this._currentIndex = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        centerTitle: true,
        title: appBarTitle()
      ),
      body: Container(), //Placeholder for the body. Should change accordingly.
      bottomNavigationBar: bottomNavBar(),
    );
  }
}

