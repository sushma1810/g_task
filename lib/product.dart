//PRODUCT DESCRIPTION PAGE

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:homepagetask2/main.dart';

class Pro1 extends StatefulWidget {
  const Pro1({Key? key}) : super(key: key);

  @override
  State<Pro1> createState() => _Pro1State();
}

class _Pro1State extends State<Pro1> {
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
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 350,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/green.png'),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'PRS 35th Anniversary C24',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'IDR 55.000.00',
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Product Description',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              child: Text(
                'High-gloss over a cellulose CAB basecoat gives the 35th Anniversary Custom 24 a finish that this, durable, and crystal clear - the perfect formula for vintage feel.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
