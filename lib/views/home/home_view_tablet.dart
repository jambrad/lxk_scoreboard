import 'package:flutter/material.dart';
import 'package:lxk_scoreboard/widgets/app_drawer/app_drawer.dart';

class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // this will make your body scrollable
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                'Just Ended',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    elevation: 10,
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: ListTile(
                                    leading: Icon(Icons.album, size: 36),
                                    title: Text('Team 1',
                                        style: TextStyle(color: Colors.black)),
                                    trailing: Container(
                                      width: 60,
                                      child: new Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text('101'),
                                          Icon(Icons.arrow_left, size: 36),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: ListTile(
                                    leading: Icon(Icons.album, size: 36),
                                    title: Text('Team 2',
                                        style: TextStyle(color: Colors.black)),
                                    trailing: Container(
                                      width: 60,
                                      child: new Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text('100'),
                                          Opacity(
                                            opacity: 0,
                                            child: Icon(Icons.arrow_left,
                                                size: 36),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            new SizedBox(
                              height: 100.0,
                              width: 1.0,
                              child: new Container(color: Colors.grey),
                            ),
                            new SizedBox(
                              height: 100.0,
                              width: MediaQuery.of(context).size.width * 0.1,
                              child: Center(
                                child: new Column(
                                  children: <Widget>[
                                    Icon(Icons.album, size: 64),
                                    Text('Final'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    elevation: 10,
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: ListTile(
                                    leading: Icon(Icons.album, size: 36),
                                    title: Text('Team 1',
                                        style: TextStyle(color: Colors.black)),
                                    trailing: Container(
                                      width: 60,
                                      child: new Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text('101'),
                                          Icon(Icons.arrow_left, size: 36),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: ListTile(
                                    leading: Icon(Icons.album, size: 36),
                                    title: Text('Team 2',
                                        style: TextStyle(color: Colors.black)),
                                    trailing: Container(
                                      width: 60,
                                      child: new Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text('100'),
                                          Opacity(
                                            opacity: 0,
                                            child: Icon(Icons.arrow_left,
                                                size: 36),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            new SizedBox(
                              height: 100.0,
                              width: 1.0,
                              child: new Container(color: Colors.grey),
                            ),
                            new SizedBox(
                              height: 100.0,
                              width: MediaQuery.of(context).size.width * 0.1,
                              child: Center(
                                child: new Column(
                                  children: <Widget>[
                                    Icon(Icons.album, size: 64),
                                    Text('Final'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   var children = [
//     Expanded(
//       child: Container(),
//     ),
//     AppDrawer()
//   ];
//   var orientation = MediaQuery.of(context).orientation;
//   return Scaffold(
//     body: orientation == Orientation.portrait
//         ? Column(children: children)
//         : Row(children: children.reversed.toList()),
//   );
// }
