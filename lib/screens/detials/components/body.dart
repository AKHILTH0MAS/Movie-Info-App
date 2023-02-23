import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/model/movie.dart';
import 'package:movie_info_app/screens/detials/components/genres.dart';
import 'package:movie_info_app/screens/detials/components/tittlenameandplusbttn.dart';

import 'backdropandrating.dart';
import 'castandcrew.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackDropAndRating(size: size, movie: movie),
          TitleNameAndPlusBttn(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding,
            ),
            child: Text(
              "Plot summary",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Text(
              movie.plot!,
              style: const TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastandCrew(
            casts: movie.cast!,
          ),
        ],
      ),
    );
  }
}
