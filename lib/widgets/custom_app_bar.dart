import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_clone/config/palette.dart';
import 'package:mdi/mdi.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.gitHubHeadBg,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: SizedBox(
            height: 30,
            width: 30,
            child:
                SvgPicture.asset("assets/menu.svg", color: Palette.githubWhite),
          ),
          onPressed: () {},
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(
              Icons.notifications_none,
              size: 22,
            ),
            onPressed: () {},
          ),
        )
      ],
      elevation: 10,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
      title: IconButton(
        icon: Icon(
          Mdi.github,
          size: 40,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
    );
  }
}
