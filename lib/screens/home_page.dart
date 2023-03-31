import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../global/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c112b),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "The Solar System",
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ],
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.blueGrey,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Text(
                Global.planets[i]["name"],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: Global.planets.length,
                    itemBuilder: (context, i, _) {
                      return Image(
                        image: AssetImage(Global.planets[i]["image"]),
                        fit: BoxFit.cover,
                      );
                    },
                    options: CarouselOptions(
                      autoPlay: false,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 1,
                      scrollDirection: Axis.vertical,
                      height: 600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
