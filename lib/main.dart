// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:homepagetask2/cart.dart';
import 'package:homepagetask2/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome Page',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Image.asset(
            "assets/logo.png",
            height: 40,
            width: 160,
            // fit: BoxFit.cover,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Cart();
                }),
              );
            },
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            //carddetails
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PRS SILVER SKY',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              'SE Edition!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Grab our latest collection and get',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 8,
                              ),
                            ),
                            Text(
                              'our special promo',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 8,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(
                              Icons.more_horiz,
                              size: 40,
                              color: Colors.white54,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          'assets/3G.jpeg',
                          alignment: Alignment.centerRight,
                          fit: BoxFit.fill,
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            //filters + single child scrollview horizontal

            Scroll_1(),
            SizedBox(
              height: 20,
            ),

            //Newarrivals and more horizontalicon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New Arrivals',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //guitar grids
            Center(
              child: Column(
                children: [
                  Row1(),
                  SizedBox(
                    height: 30,
                  ),
                  Row2(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row Row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Grid1(),
        SizedBox(
          width: 20,
        ),
        Grid2(),
      ],
    );
  }

  Row Row2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Grid3(),
        SizedBox(
          width: 20,
        ),
        Grid4(),
      ],
    );
  }

  Column Grid1() {
    return Column(
      children: [
        Container(
          width: 140,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/green.png'),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              color: Colors.black),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Pro1();
                }),
              );
            },
          ),
        ),
        Text(
          'PRS 35th Anniversary...',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'IDR 55,000.00',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.black38),
        )
      ],
    );
  }

  Column Grid2() {
    return Column(
      children: [
        Container(
          width: 140,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/yellow.png'),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              color: Colors.black),
        ),
        Text(
          'Suhr Jaguar Classic...',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'IDR 42,000.00',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.black38),
        ),
      ],
    );
  }

  Column Grid3() {
    return Column(
      children: [
        Container(
          width: 140,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/brown.png'),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              color: Colors.black),
        ),
        Text(
          'Suhr Classic S Paul...',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'IDR 509.800.00',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.black38),
        ),
      ],
    );
  }

  Column Grid4() {
    return Column(
      children: [
        Container(
          width: 140,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/black.png'),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              color: Colors.black),
        ),
        Text(
          'PRS Custom 24 Piezo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'IDR 505,000.00',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.black38),
        ),
      ],
    );
  }

  SingleChildScrollView Scroll_1() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              )),
            ),
            child: Text(
              'All',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Sizedbox_1(),
          OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            child: Text(
              'Guitar',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Sizedbox_1(),
          OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.amber,
                      width: 1.0),
                ),
              ),
            ),
            child: Text(
              'Bass',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Sizedbox_1(),
          OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            child: Text(
              'Effect',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox Sizedbox_1() {
    return SizedBox(
      width: 6.0,
    );
  }
}
