import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constans.dart';
import 'package:netflixclone/presentation/home/widgets/custom_button.dart';
import 'package:netflixclone/presentation/widgets/video_widgets.dart';

class EveryonesWathingWidgets extends StatelessWidget {
  const EveryonesWathingWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          "Friends",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          "This hit sitcom follows the merry misadventure of six  20-something oais as they navigate the pitfalls of work,life and loves in 1990s Manhattam .",
          style: TextStyle(color: kgrey),
        ),
        kheight50,
        VideoWidgets(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: (Icons.share),
              title: "Share",
              iconsize: 25,
              textSize: 16,
            ),
            KWidth,
            CustomButton(
              icon: (Icons.add),
              title: "My List",
              iconsize: 25,
              textSize: 16,
            ),
            KWidth,
            CustomButton(
              icon: (Icons.play_arrow),
              title: " Play",
              iconsize: 25,
              textSize: 16,
            ),
            KWidth,
          ],
        )
      ],
    );
  }
}
