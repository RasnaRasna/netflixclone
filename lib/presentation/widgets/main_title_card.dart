import 'package:flutter/material.dart';
import 'package:netflixclone/core/constans.dart';
import 'package:netflixclone/presentation/widgets/main_card.dart';
import 'package:netflixclone/presentation/widgets/main_title.dart';

class Maintitlecard extends StatelessWidget {
  const Maintitlecard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Maintitle(title: title),
        kheight,
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              ((index) => const Maincard()),
            ),
          ),
        )
      ],
    );
  }
}
