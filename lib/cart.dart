// CART PAGE
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:homepagetask2/main.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return MyHomePage();
              }),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Title(
            color: Colors.black,
            child: Text(
              'Your Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
            )),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Space(),
            C_row1(),
            Space(),
            C_row2(),
            Space(),
            C_row3(),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Subtotal items (3)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                  textAlign: TextAlign.end,
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  'IDR 65.120.000',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Delivery Fee',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  'IDR 1.000',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Space(),
            Text(
              '______________________________________',
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  'IDR 65.121.000',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  color: Colors.black),
              child: TextButton(
                onPressed: (() {}),
                child: Text(
                  'Go to Payment',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox Space() {
    return SizedBox(
      height: 10,
    );
  }

  Row C_row1() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //image and description
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/green.png'),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
                color: Colors.black),
          ),
          Space_W(),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'PRS 35th Anniversary C24',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.black,
                    ),
                    splashRadius: 15,
                    tooltip: 'Delete',
                  ),
                ],
              ),
              Text(
                'Qty:1',
                style: TextStyle(
                    wordSpacing: 0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
              Row(
                children: [
                  Text(
                    'IDR 55.000.000',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_circle_outline,
                      color: Colors.black,
                      size: 18,
                    ),
                    splashRadius: 15,
                    tooltip: 'Remove item',
                  ),
                  Text(
                    '01',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.black,
                      size: 18,
                    ),
                    splashRadius: 15,
                    tooltip: 'Add more',
                  ),
                ],
              ),
            ],
          ),
        ],
      );
  Row C_row2() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //image and description
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/string.png'),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
                color: Colors.black),
          ),
          Space_W(),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'SIT Strings Power Wound..',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.black,
                    ),
                    splashRadius: 15,
                    tooltip: 'Delete',
                  ),
                ],
              ),
              Text(
                'Qty:1',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black45),
              ),
              Row(
                children: [
                  Text(
                    'IDR 920.000',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_circle_outline,
                      color: Colors.black,
                      size: 18,
                    ),
                    splashRadius: 15,
                    tooltip: 'Remove item',
                  ),
                  Text(
                    '01',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.black,
                      size: 18,
                    ),
                    splashRadius: 15,
                    tooltip: 'Add more',
                  ),
                ],
              ),
            ],
          ),
        ],
      );

  Row C_row3() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //image and description
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/zebra.png'),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
                color: Colors.black),
          ),
          Space_W(),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'PRS SE Exotic Zebra Wood',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.black,
                    ),
                    splashRadius: 15,
                    tooltip: 'Delete',
                  ),
                ],
              ),
              Text(
                'Qty:1',
                style: TextStyle(
                    wordSpacing: 0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
              Row(
                children: [
                  Text(
                    'IDR 9.200.000',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_circle_outline,
                      color: Colors.black,
                      size: 18,
                    ),
                    splashRadius: 15,
                    tooltip: 'Remove item',
                  ),
                  Text(
                    '01',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.black,
                      size: 18,
                    ),
                    splashRadius: 15,
                    tooltip: 'Add more',
                  ),
                ],
              ),
            ],
          ),
        ],
      );

  SizedBox Space_W() {
    return SizedBox(
      width: 10,
    );
  }
}
