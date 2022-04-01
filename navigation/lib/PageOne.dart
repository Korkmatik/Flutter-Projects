import 'package:flutter/material.dart';

import 'PageTwo.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('One'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Page One'),
            MaterialButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => PageTwo())),
              child: Text('Go to Page Two'),
            ),
          ],
        )
      ),
      backgroundColor: Color(0xFFCCCCFF),
    );
  }
}
