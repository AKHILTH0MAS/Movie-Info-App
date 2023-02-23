import 'package:flutter/material.dart';

import 'categories.dart';
import 'genres.dart';

import 'moviecarousal.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        const categorylist(),
        Genres(),
        const MovieCarosel(),
      ],
    );
  }
}
