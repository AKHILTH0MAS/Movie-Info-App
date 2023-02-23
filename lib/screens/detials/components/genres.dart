import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/movie.dart';
import '../../components/genrecard.dart';

class Genres extends StatelessWidget {
  const Genres({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra!.length,
          itemBuilder: (context, index) =>
              GenreCard(genre: movie.genra![index]),
        ),
      ),
    );
  }
}
