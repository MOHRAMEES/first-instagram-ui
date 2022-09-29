//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Firstui extends StatelessWidget {
  final uri = Uri.parse("https://www.instagram.com/cristiano/");
  final uri1 = Uri.parse("https://www.instagram.com/faarissii/");
  final uri2 = Uri.parse("https://www.instagram.com/farhathullah.najeeb/");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RAMEES",
      home: Scaffold(
          body: Column(children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 15, top: 50),
              child: Icon(
                Icons.align_horizontal_left_rounded,
                size: 30,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 300, top: 50),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 90, left: 20),
              child: Text(
                'Fashion Week',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                '2021 Fastion show in paris',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Explore',
                style: TextStyle(
                    color: Color.fromARGB(255, 5, 15, 24),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                FontAwesomeIcons.sliders,
                size: 18,
                color: Color.fromARGB(255, 160, 152, 152),
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text('Recommended',
                  style: TextStyle(color: Colors.purple, fontSize: 15)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 40),
              child: Text('New  Models',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 40),
              child: Text('2020 Show',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
            ),
          ],
        ),
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30),
            child: InkWell(
              onTap: () {
                launchUrl(uri2);
              },
              child: Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/farhath.jpeg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.brown),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: InkWell(
                    onTap: () {
                      launchUrl(uri1);
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/salman.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.purple),
                    ),
                  )),
            ],
          )
        ]),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: RichText(
                      text: TextSpan(
                          text: 'Niketa William',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: '\nParis',
                            style: TextStyle(fontWeight: FontWeight.normal))
                      ]))),
              Padding(
                  padding: const EdgeInsets.only(top: 10, left: 90),
                  child: RichText(
                      text: TextSpan(
                          text: 'Trisha Louis',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: '\nLondon',
                            style: TextStyle(fontWeight: FontWeight.normal))
                      ]))),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
          child: Center(
              child: InkWell(
                  onTap: () {
                    launchUrl(uri);
                  },
                  child: Container(
                    height: 160,
                    width: 480,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/cr7.jpg'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple),
                  ))),
        )
      ])),
    );
  }
}
