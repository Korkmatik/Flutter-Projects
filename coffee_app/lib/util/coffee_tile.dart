import 'package:flutter/material.dart';


class CofeeTile extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String imagePath;

  const CofeeTile({Key? key, required this.name, required this.description, required this.price, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // coffee image
              Center(
                child: Container(
                  height: 150.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                        this.imagePath,
                      ),
                  ),
                ),
              ),

              SizedBox(height: 25.0,),

              // coffee image
              Text(
                this.name,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 5.0,),
              Text(
                this.description,
                style: TextStyle(color: Colors.grey[600]),
              ),

              SizedBox(height: 35.0,),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      this.price,
                      style: TextStyle(
                        fontSize: 20.0
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.orange
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        color: Colors.orange,
                      ),
                      padding: EdgeInsets.all(3.0),
                      child: Icon(Icons.add),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
