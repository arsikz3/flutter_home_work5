import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          ),
          drawer: LeftMenu(),
          endDrawer: RightMenu(),
          bottomNavigationBar: BottomNavBar(),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'simple app',
                    ),
                  ],
                ),
              ),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: Builder(builder: (context) {
            return FloatingActionButton(
              onPressed: () {
                showBottomSheetMenu();
              },
              child: Icon(Icons.mediation),
            );
          }),
        ));
  }

  void showBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (BuildContext context) {
          return SizedBox(
            height: 100,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.card_membership),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Сумма'),
                          ],
                        ),
                        const Text('200 руб'),
                      ],
                    ),
                  ),
                  TextButton(
                    child: Text('Оплатить'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class LeftMenu extends StatelessWidget {
  const LeftMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {},
          ),
        ],
      ),
    );
    ;
  }
}

class RightMenu extends StatelessWidget {
  const RightMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Calls',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label: 'Camera',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
      ],
    );
  }
}
