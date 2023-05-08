import 'package:flutter/material.dart';
import 'package:netflixclone/core/constans.dart';
import 'package:netflixclone/presentation/home/widgets/custom_button.dart';
import 'package:netflixclone/presentation/widgets/video_widgets.dart';

import '../../../core/colors/colors.dart';

class ComingSoonWidgets extends StatelessWidget {
  const ComingSoonWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: TextStyle(fontSize: 16, color: kgrey),
              ),
              Text(
                '11',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidgets(),
              kheight,
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tall GIRL 2",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButton(
                        icon: (Icons.all_out_sharp),
                        title: "Remind me",
                        iconsize: 20,
                        textSize: 12,
                      ),
                      KWidth,
                      CustomButton(
                        icon: Icons.info,
                        title: " Info",
                        iconsize: 20,
                        textSize: 12,
                      ),
                      KWidth
                    ],
                  ),
                ],
              ),
              kheight,
              Text("Coming On Friday"),
              kheight,
              Text(
                "Tall GIRL 2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kheight,
              Text(
                " LAnding the lead in the school  musicial is a dream come true for jodi ,util the pressuresends her confidence__and her relationship__ into a tallspain",
                style: TextStyle(color: kgrey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
