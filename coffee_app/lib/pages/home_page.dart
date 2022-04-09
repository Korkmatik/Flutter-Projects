import 'package:coffee_app/util/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Column(
        children: [
          // Find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(
                fontSize: 60
              ),
            ),
          ),

          SizedBox(height: 25,),

          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Find your coffee..',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600, width: 2.0)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600, width: 2.0)
                ),
              ),
            ),
          ),

          SizedBox(height: 25.0),

          // horizontal listview of coffee tiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CofeeTile(
                  name: "Latte",
                  description: 'With Almond Milk',
                  price: '\$5.00',
                  imagePath: 'images/coffee01.jpg',
                ),
                CofeeTile(
                  name: "Cappucino",
                  description: 'With Almond Milk',
                  price: '\$4.50',
                  imagePath: 'images/coffee02.jpg',
                ),
                CofeeTile(
                  name: "Milk Coffee",
                  description: 'With Almond Milk',
                  price: '\$4.50',
                  imagePath: 'images/coffee03.jpg',
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: ''
          ),
        ],
      ),
    );
  }
}
