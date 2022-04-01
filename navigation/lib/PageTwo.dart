import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  static int _counter = 0;

  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _counter++;

    return Scaffold(
      appBar: AppBar(title: Text('Two'),),
      body: Center(
        child: Column(
          children: [
            Text('Page Two Nr. $_counter'),
            MaterialButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Page Two Nr. $_counter'),
            )
          ],
        ),
      ),
    );
  }
}
