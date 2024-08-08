import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final CarouselController? carouselController = CarouselController();
  int currentPage = 0;
  List imageList = [
    'assets/images/monde1.jpg',
    'assets/images/monde2.jpg',
    'assets/images/monde3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
                child: Text('Continue'))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Infos World',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 50),
              CarouselSlider(
                  carouselController: carouselController,
                  items: imageList
                      .map(
                        (e) => Container(
                          child: Image.asset(e),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(enlargeCenterPage: true)),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        carouselController!.previousPage(
                            duration: Duration(seconds: 1), curve: Curves.ease);
                      },
                      child: Text('Precedent')),
                  TextButton(
                      onPressed: () {
                        carouselController!.nextPage(
                            duration: Duration(seconds: 1), curve: Curves.ease);
                      },
                      child: Text('Precedent'))
                ],
              ),
              Spacer()
            ],
          ),
        ));
  }
}
