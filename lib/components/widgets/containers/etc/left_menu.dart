import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: <Widget>[
            const DrawerHeader(
                child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/cam2.jpg'),
            )),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Images'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.file_copy),
              title: const Text('Files'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Выход')),
                  TextButton(
                      onPressed: () {}, child: const Text('Регистрация')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
