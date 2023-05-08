import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constans.dart';
import 'package:netflixclone/presentation/search/widgets/titile.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/cRdA9xjHBbobw4LJFsQ3j1CgpVq.jpg";

class SearchIdelWidget extends StatelessWidget {
  const SearchIdelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: "Top Searches"),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) => const TopSearchItemtile()),
              separatorBuilder: ((context, index) => kheight20),
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemtile extends StatelessWidget {
  const TopSearchItemtile({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenWitdh = MediaQuery.of(context).size.width;
    return Row(
      children: [
        (Container(
          width: ScreenWitdh * 0.35,
          height: 65,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageurl))),
        )),
        const Expanded(
            child: Text(
          "Movie Name",
          style: TextStyle(
              color: kwhite, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: kwhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kblack,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhite,
            ),
          ),
        )
        // Icon(CupertinoIcons.play)
      ],
    );
  }
}
