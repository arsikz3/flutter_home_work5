import 'package:flutter/material.dart';

class RightMenu extends StatelessWidget {
  const RightMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/cam2.jpg')),
            SizedBox(
              height: 10,
            ),
            Text(' Иван Иванов'),
          ],
        ),
      ),
    );
  }
}
