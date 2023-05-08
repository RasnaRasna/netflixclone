import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constans.dart';
import 'package:netflixclone/presentation/home/widgets/custom_button.dart';
import 'package:netflixclone/presentation/new_and_hot/widgets/coming_soon.dart';
import 'package:netflixclone/presentation/new_and_hot/widgets/everyones_watching.dart';
import 'package:netflixclone/presentation/widgets/app_bar.widget.dart';
import 'package:netflixclone/presentation/widgets/video_widgets.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Text(
              "Hot & New",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
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
            bottom: TabBar(
                labelColor: kblack,
                unselectedLabelColor: kwhite,
                labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kwhite, borderRadius: kradius30),
                tabs: [
                  Tab(
                    text: " 🍿 Comming Soon",
                  ),
                  Tab(
                    text: " 👀  Everyone's Watching",
                  ),
                ]),
          ),
        ),
        body: TabBarView(
            children: [_buildComingSoon(), _buildEveryonesWatching()]),
      ),
    );
  }
}

Widget _buildComingSoon() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, index) => ComingSoonWidgets(),
  );
}

Widget _buildEveryonesWatching() {
  return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return EveryonesWathingWidgets();
      });
}
