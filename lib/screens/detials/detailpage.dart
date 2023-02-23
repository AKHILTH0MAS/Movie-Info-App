import 'package:flutter/material.dart';
import 'package:movie_info_app/model/movie.dart';

import 'components/body.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        movie: movie,
      ),
    );
  }
}
