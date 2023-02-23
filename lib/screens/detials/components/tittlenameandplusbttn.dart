import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/movie.dart';

class TitleNameAndPlusBttn extends StatelessWidget {
  const TitleNameAndPlusBttn({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title!,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Row(
                children: [
                  Text(
                    "${movie.year}",
                    style: const TextStyle(
                      color: kTextLightColor,
                    ),
                  ),
                  const SizedBox(
                    width: kDefaultPadding / 2,
                  ),
                  const Text(
                    "PG-13",
                    style: TextStyle(
                      color: kTextLightColor,
                    ),
                  ),
                  const SizedBox(
                    width: kDefaultPadding / 2,
                  ),
                  const Text(
                    "2h 32min",
                    style: TextStyle(
                      color: kTextLightColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 64,
          width: 64,
          decoration: const BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 28,
              color: Colors.white,
            ),
          ),
        )
      ]),
    );
  }
}
