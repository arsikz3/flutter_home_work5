import 'package:flutter/material.dart';

import 'package:flutter_home_work5/components/widgets/containers/etc/buttom_nav_bar.dart';
import 'package:flutter_home_work5/components/widgets/containers/etc/buttom_sheet_menu.dart';
import 'package:flutter_home_work5/components/widgets/containers/etc/left_menu.dart';
import 'package:flutter_home_work5/components/widgets/containers/etc/right_menu.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text(widget.title),
            actions: [
              Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: const Icon(Icons.person));
              })
            ],
          ),
          drawer: const LeftMenu(),
          endDrawer: const RightMenu(),
          bottomNavigationBar: const BottomNavBar(),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'simple app',
                    ),
                  ],
                ),
              ),
              const Icon(Icons.directions_transit),
              const Icon(Icons.directions_bike),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: Builder(builder: (context) {
            return FloatingActionButton(
              onPressed: () {
                showBottomSheetMenu(context);
              },
              child: const Icon(Icons.mediation),
            );
          }),
        ));
  }
}
