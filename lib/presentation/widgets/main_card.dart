import 'package:flutter/material.dart';
import 'package:netflixclone/core/constans.dart';

class Maincard extends StatelessWidget {
  const Maincard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kradius10,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wDWwtvkRRlgTiUr6TyLSMX8FCuZ.jpg"),
        ),
      ),
    );
  }
}
