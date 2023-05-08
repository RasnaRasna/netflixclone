import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constans.dart';
import 'package:netflixclone/presentation/home/widgets/background_card.dart';
import 'package:netflixclone/presentation/home/widgets/number_title_card.dart';

import 'package:netflixclone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else {
                    if (direction == ScrollDirection.forward) {
                      scrollNotifier.value = true;
                    }
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        BackGroundCard(),
                        Maintitlecard(
                          title: "Released in the Past",
                        ),
                        kheight,
                        Maintitlecard(
                          title: "Trending Now",
                        ),
                        kheight,
                        NumberTitleCard(),
                        Maintitlecard(
                          title: "Tense Dramas",
                        ),
                        kheight,
                        Maintitlecard(
                          title: "South Indian Cinema",
                        ),
                        kheight,
                      ],
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                            duration: Duration(microseconds: 1000),
                            width: double.infinity,
                            height: 90,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      "https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png",
                                      width: 60,
                                      height: 60,
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    KWidth,
                                    Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.blue,
                                    ),
                                    KWidth
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Tv Shows",
                                      style: kHometitleText,
                                    ),
                                    Text(
                                      "Movies",
                                      style: kHometitleText,
                                    ),
                                    Text(
                                      "Categories",
                                      style: kHometitleText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        : kheight
                  ],
                ),
              );
            }));
  }

  TextButton playbutton() {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhite)),
        icon: const Icon(
          Icons.play_arrow,
          size: 25,
          color: kblack,
        ),
        label: const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: kblack),
          ),
        ));
  }
}
