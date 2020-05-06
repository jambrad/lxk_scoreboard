/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape

import 'package:flutter/material.dart';
import 'package:lxk_scoreboard/viewmodels/home_viewmodel.dart';
import 'package:lxk_scoreboard/widgets/app_drawer/app_drawer.dart';
import 'package:lxk_scoreboard/widgets/base_model_widget.dart';

import 'home_view.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, HomeViewModel model) {
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
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 130,
            width: double.infinity,
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
                            width: MediaQuery.of(context).size.width * 0.7,
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
                            width: MediaQuery.of(context).size.width * 0.7,
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
                                      child: Icon(Icons.arrow_left, size: 36),
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
                        width: MediaQuery.of(context).size.width * 0.2,
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
    );
  }
}

class HomeMobileLandscape extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
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
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 130,
            width: double.infinity,
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
                            width: MediaQuery.of(context).size.width * 0.7,
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
                            width: MediaQuery.of(context).size.width * 0.7,
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
                                      child: Icon(Icons.arrow_left, size: 36),
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
                        width: MediaQuery.of(context).size.width * 0.2,
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
    );
  }
}

// class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context, HomeViewModel model) {
//     return Scaffold(
//       key: _scaffoldKey,
//       drawer: AppDrawer(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           model.updateTitle();
//         },
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: IconButton(
//               icon: Icon(Icons.menu, size: 30),
//               onPressed: () {
//                 _scaffoldKey?.currentState?.openDrawer();
//               },
//             ),
//           ),
//           Expanded(
//             child: Center(
//               child: Text(model.title),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class HomeMobileLandscape extends BaseModelWidget<HomeViewModel> {
//   @override
//   Widget build(BuildContext context, HomeViewModel model) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context)
//               .push(MaterialPageRoute(builder: (context) => SecondView()));
//         },
//       ),
//       body: Row(
//         children: <Widget>[
//           AppDrawer(),
//           Expanded(
//             child: Center(
//               child: Text(
//                 model.title,
//                 style: TextStyle(fontSize: 35),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
