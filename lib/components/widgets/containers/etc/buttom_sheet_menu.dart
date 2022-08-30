import 'package:flutter/material.dart';

void showBottomSheetMenu(context) {
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
                  child: const Text('Оплатить'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        );
      });
}
