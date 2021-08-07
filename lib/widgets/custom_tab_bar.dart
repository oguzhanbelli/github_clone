import 'package:flutter/material.dart';
import 'package:github_clone/config/palette.dart';


class CustomTabBar extends StatelessWidget {
  late final List<String> text;
  late final int selectedIndex;
  late final Function(int) onTap;
  late final bool isBottomIndicator;

  CustomTabBar(
      {required this.text,
        required this.selectedIndex,
        required this.onTap,
        this.isBottomIndicator = false});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
          border: isBottomIndicator
              ? Border(
              bottom: BorderSide(
                color: Palette.githubBlue,
                width: 3,
              ))
              : Border(
              top: BorderSide(
                color: Palette.githubBlue,
                width: 3,
              ))),
      tabs: text
          .asMap()
          .map((i, e) => MapEntry(
        i,
        Tab(
          icon: Text(
            e,
            style: TextStyle(
              color: i == selectedIndex ? Palette.githubBlue : Colors.white,
            ),
          ),
        ),
      ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
