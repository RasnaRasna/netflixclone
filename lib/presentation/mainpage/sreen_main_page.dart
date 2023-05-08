import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/presentation/downloads/widgets/sreen_downloads.dart';
import 'package:netflixclone/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflixclone/presentation/home/widgets/screenhome.dart';
import 'package:netflixclone/presentation/mainpage/widgets/bottom_nav.dart';
import 'package:netflixclone/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflixclone/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexchangenotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidgets(),
    );
  }
}
