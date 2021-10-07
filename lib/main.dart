// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> assetsList = [
      'assets/woman1.svg',
      'assets/woman2.svg',
      'assets/woman3.svg'
    ];
    List<Color> colorsList = [
      Colors.amber,
      Colors.deepPurple,
      Colors.limeAccent
    ];

    return MaterialApp(
      title: 'Lesson 3',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lesson 3'),
        ),
        body: CarouselSlider(
          options: CarouselOptions(
            height: double.infinity,
            autoPlay: true,
            viewportFraction: 1.0,
            aspectRatio: 2.0,
          ),
          items: assetsList
              .map((item) => Container(
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 300,
                          minWidth: 100,
                        ),
                        child: SvgPicture.asset(
                          item,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    color: colorsList[assetsList.indexOf(item)],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
