import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_clone/config/palette.dart';
import 'package:github_clone/data/data.dart';
import 'package:github_clone/widgets/repositories_container.dart';
import 'package:github_clone/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    return Stack(
      fit: StackFit.loose,
      children: [
        Row(
          children: [
            Expanded(
                flex: isDesktop ? 3 : 4,
                child: RepositoriesContainer(
                  currentUser: currentUser,
                )),
            Expanded(
              flex: isDesktop ? 9 : 11,
              child: AllActivityContainer(
                currentUser: currentUser,
              ),
            ),
            Expanded(
              flex: isDesktop ? 3 : 0,
              child: isDesktop
                  ? ExploreReposContainer(
                      currentUser: currentUser,
                    )
                  : Center(),
            ),
          ],
        )
      ],
    );
  }
}
