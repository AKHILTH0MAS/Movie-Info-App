import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../constants.dart';
import '../../model/movie.dart';
import 'moviecard.dart';

class MovieCarosel extends StatefulWidget {
  const MovieCarosel({super.key});

  @override
  State<MovieCarosel> createState() => _MovieCaroselState();
}

class _MovieCaroselState extends State<MovieCarosel> {
  late PageController _pageController;
  int intialPage = 1;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: intialPage,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            intialPage = value;
            setState(() {});
          },
          physics: const ClampingScrollPhysics(),
          controller: _pageController,
          itemCount: movies.length,
          itemBuilder: (context, index) => movieCardSlider(index),
        ),
      ),
    );
  }

  Widget movieCardSlider(
    int index,
  ) =>
      AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = index - _pageController.page!;
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 350),
            opacity: intialPage == index ? 1 : 0.4,
            child: Transform.rotate(
              angle: math.pi * value,
              child: Moviecard(
                movie: movies[index],
              ),
            ),
          );
        },
      );
}
