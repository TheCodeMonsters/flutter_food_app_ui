import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomepageState createState() => new HomepageState();
}

class HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: ListView(
        padding: EdgeInsets.only(top: 20.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {},
                color: Colors.white,
              ),
              Container(
                width: 125.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.filter_list),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                Text(
                  'Healty ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Food',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 85.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(75.0),
                  topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 300,
                  child: ListView(
                    children: [
                      _buildFoodItem('assets/board1.png', 'Salmon', '\$49.54'),
                      _buildFoodItem('assets/board2.png', 'Salmon', '\$55.54'),
                      _buildFoodItem('assets/board3.png', 'Salmon', '\$20.54'),
                      _buildFoodItem('assets/board4.png', 'Salmon', '\$15.54'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid)),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid)),
                      child: Center(
                        child: Icon(
                          Icons.shopping_basket,
                          color: Colors.black,
                          size: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              width: 1.0,
                              color: Color(0xFF1C1428),
                              style: BorderStyle.solid)),
                      child: Center(
                        child: Text(
                          'CheckOut',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildFoodItem(String imgPath, String FoodName, String price) {
  return Padding(
    padding: EdgeInsets.only(left: 14.0, top: 10.0),
    child: InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: <Widget>[
                Hero(
                  tag: imgPath,
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FoodName,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.black),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
    ),
  );
}
