import 'package:flutter/material.dart';
import 'bookpage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ScrollController _scrollController;
  double _titleOpacity = 1.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    double offset = _scrollController.offset;
    double maxOffset = 100.0; // Distance over which to fade

    // Calculate opacity based on scroll position
    double newOpacity = 1.0 - (offset / maxOffset).clamp(0.0, 1.0);

    if (newOpacity != _titleOpacity) {
      setState(() {
        _titleOpacity = newOpacity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 225, 232, 235),
                    Color.fromARGB(255, 197, 227, 244),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hello,User",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Image.asset(
                          "images/profile.jpg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Which services do\nyou need today?",
                    style: TextStyle(
                      color: Color(0xff284a79),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "How can i help you?",
                        hintStyle: TextStyle(color: Colors.black45),
                        suffixIcon: Icon(Icons.search, color: Colors.orange),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                              child: Image.asset(
                                "images/laundry.png",
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Laundry",
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20.0),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                              child: Image.asset(
                                "images/painting.png",
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "painting",
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20.0),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                              child: Image.asset(
                                "images/reparing.png",
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Repairs and\n Construction",
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20.0),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                              child: Image.asset(
                                "images/cleaning.png",
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Cleaning\n services",
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
            AnimatedOpacity(
              opacity: _titleOpacity,
              duration: Duration(milliseconds: 300),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 100.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Text(
                  "Popular Services",
                  style: TextStyle(
                    color: Color(0xff284a79),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        left: 20.0,
                        bottom: 10.0,
                      ),
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 197, 227, 244),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/girl.jpg",
                              height: 120.0,
                              width: 90.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 30.0,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                      color: Color(0xff284a79),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Home cleaning",
                                style: TextStyle(
                                  color: Color(0xff284a79),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "by Sarah Williams",
                                style: TextStyle(
                                  color: Color(0xff284a79),
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 20.0),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    margin: EdgeInsets.only(top: 10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      "ksh 200/hr",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.0),

                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => BookPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5.0),
                                      margin: EdgeInsets.only(top: 10.0),
                                      decoration: BoxDecoration(
                                        color: Color(0xff284a79),
                                        borderRadius: BorderRadius.circular(
                                          10.0,
                                        ),
                                      ),
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        left: 20.0,
                        bottom: 10.0,
                      ),
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 197, 227, 244),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/boy.jpg",
                              height: 120.0,
                              width: 90.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 30.0,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                      color: Color(0xff284a79),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Home cleaning",
                                style: TextStyle(
                                  color: Color(0xff284a79),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "by Sarah Williams",
                                style: TextStyle(
                                  color: Color(0xff284a79),
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 20.0),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    margin: EdgeInsets.only(top: 10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      "ksh 200/hr",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.0),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    margin: EdgeInsets.only(top: 10.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xff284a79),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      "Book Now",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        left: 20.0,
                        bottom: 10.0,
                      ),
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 197, 227, 244),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/cleaning1.jpg",
                              height: 120.0,
                              width: 90.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 30.0,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                      color: Color(0xff284a79),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Home cleaning",
                                style: TextStyle(
                                  color: Color(0xff284a79),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "by Sarah Williams",
                                style: TextStyle(
                                  color: Color(0xff284a79),
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 20.0),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    margin: EdgeInsets.only(top: 10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      "ksh 200/hr",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.0),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    margin: EdgeInsets.only(top: 10.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xff284a79),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      "Book Now",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
