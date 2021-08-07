import 'package:flutter/material.dart';
import 'package:github_clone/config/palette.dart';
import 'package:github_clone/data/data.dart';
import 'package:github_clone/screens/screens.dart';
import 'package:github_clone/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class CustomNavBar extends StatefulWidget {
  late final List<String> text;
  late final int selectedIndex;
  late final Function(int) onTap;

  CustomNavBar(
      {required this.text, required this.selectedIndex, required this.onTap});

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  double height = 25;
  double width = 225;
  bool isTap = false;
  final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      height: 50.0,
      decoration: BoxDecoration(color: Palette.gitHubHeadBg, boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 2),
          blurRadius: 4.0,
        ),
      ]),
      child: Row(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              child: IconButton(
                icon: Icon(
                  Mdi.github,
                  size: 35,
                  color: Palette.githubWhite,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Expanded(
              flex: 8,
              child: Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  SizedBox(
                    height: height,
                    width: width,
                    child: TextField(
                      focusNode: focus,
                      autofocus: false,
                      onSubmitted: (v) {
                        FocusScope.of(context).unfocus();
                        setState(() {
                          height = 25;
                          width = 225;
                        });
                      },
                      onTap: () {
                        setState(() {
                          height = 25;
                          width = 300;
                        });
                      },
                      style:
                          TextStyle(fontSize: 11.0, color: Palette.githubWhite),
                      decoration: new InputDecoration(
                        fillColor: Palette.scaffold.withOpacity(0.5),
                        enabledBorder: const OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderSide: const BorderSide(
                              color: Palette.githubGrey, width: 0.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        filled: true,
                        hintStyle: GoogleFonts.quicksand(
                            color: Palette.githubWhite.withOpacity(0.3),
                            fontSize: 11,
                            fontWeight: FontWeight.normal),
                        contentPadding: EdgeInsets.only(top: 15, left: 15),
                        hintText: "Search GitHub",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Material(
                    color: Palette.gitHubHeadBg,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Pull requests",
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Material(
                    color: Palette.gitHubHeadBg,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Issues",
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Material(
                    color: Palette.gitHubHeadBg,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Marketplace",
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Material(
                    color: Palette.gitHubHeadBg,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Explore",
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  Icons.notifications_none_rounded,
                  color: Palette.githubWhite,
                  size: 20,
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 40,
                width: 54,
                child: PopupMenuButton(
                  color: Palette.gitHubHeadBg,
                  offset: Offset(0, 50),
                  icon: Row(
                    children: [
                      Icon(
                        Mdi.plus,
                        color: Palette.githubWhite,
                        size: 19,
                      ),
                      Icon(
                        Mdi.menuDown,
                        color: Palette.githubWhite,
                        size: 19,
                      )
                    ],
                  ),
                  elevation: 10,
                  shape: const TooltipShape(),
                  itemBuilder: (BuildContext bc) => [
                    PopupMenuItem(
                        child: ListTile(
                      title: Text(
                        'New repository',
                        style: GoogleFonts.quicksand(
                          color: Palette.githubWhite,
                          fontSize: 11,
                        ),
                      ),
                    )),
                    PopupMenuItem(
                        child: ListTile(
                      title: Text(
                        'Import repository',
                        style: GoogleFonts.quicksand(
                          color: Palette.githubWhite,
                          fontSize: 11,
                        ),
                      ),
                    )),
                    PopupMenuItem(
                        child: ListTile(
                      title: Text(
                        'New gist',
                        style: GoogleFonts.quicksand(
                          color: Palette.githubWhite,
                          fontSize: 11,
                        ),
                      ),
                    )),
                    PopupMenuItem(
                        child: ListTile(
                      title: Text(
                        'New organization',
                        style: GoogleFonts.quicksand(
                          color: Palette.githubWhite,
                          fontSize: 11,
                        ),
                      ),
                    )),
                    PopupMenuItem(
                        child: ListTile(
                      title: Text(
                        'New project',
                        style: GoogleFonts.quicksand(
                          color: Palette.githubWhite,
                          fontSize: 11,
                        ),
                      ),
                    )),
                  ],
                  onSelected: (route) {
                    print(route);
                  },
                ),
              ),
              popupButton(context),
            ],
          ),
        ],
      ),
    );
  }
}

Widget popupButton(BuildContext context) {
  return SizedBox(
    height: 40,
    width: 60,
    child: PopupMenuButton(
      color: Palette.gitHubHeadBg,
      offset: Offset(-15, 40),
      icon: Row(
        children: [
          ClipOval(
            child: Image.network(
              currentUser.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Icon(
            Mdi.menuDown,
            color: Palette.githubWhite,
            size: 19,
          )
        ],
      ),
      elevation: 2,
      shape: const TooltipShape(),
      itemBuilder: (BuildContext bc) => [
        PopupMenuItem(
            child: ListTile(
          title: Text(
            'New repository',
            style: GoogleFonts.quicksand(
              color: Palette.githubWhite,
              fontSize: 10,
            ),
          ),
        )),
        PopupMenuItem(
            child: ListTile(
          title: Text(
            'Import repository',
            style: GoogleFonts.quicksand(
              color: Palette.githubWhite,
              fontSize: 10,
            ),
          ),
        )),
        PopupMenuItem(
            child: ListTile(
          title: Text(
            'New gist',
            style: GoogleFonts.quicksand(
              color: Palette.githubWhite,
              fontSize: 10,
            ),
          ),
        )),
        PopupMenuItem(
            child: ListTile(
          title: Text(
            'New organization',
            style: GoogleFonts.quicksand(
              color: Palette.githubWhite,
              fontSize: 10,
            ),
          ),
        )),
        PopupMenuItem(
            child: ListTile(
          title: Text(
            'New project',
            style: GoogleFonts.quicksand(
              color: Palette.githubWhite,
              fontSize: 10,
            ),
          ),
        )),
      ],
    ),
  );
}

class TooltipShape extends ShapeBorder {
  const TooltipShape();

  final Color _color = Palette.githubWhite;
  final BorderSide _side = BorderSide.none;

  final BorderRadiusGeometry _borderRadius = BorderRadius.zero;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(_side.width);

  @override
  Path getInnerPath(
    Rect rect, {
    TextDirection? textDirection,
  }) {
    final Path path = Path();

    path.addRRect(
      _borderRadius.resolve(textDirection).toRRect(rect).deflate(_side.width),
    );

    return path;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final Path path = Path();
    final RRect rrect = _borderRadius.resolve(textDirection).toRRect(rect);

    path.moveTo(0, 10);
    path.quadraticBezierTo(0, 0, 10, 0);
    path.lineTo(rrect.width - 30, 0);
    path.lineTo(rrect.width - 20, -10);
    path.lineTo(rrect.width - 10, 0);
    path.quadraticBezierTo(rrect.width, 0, rrect.width, 10);
    path.lineTo(rrect.width, rrect.height - 10);
    path.quadraticBezierTo(
        rrect.width, rrect.height, rrect.width - 10, rrect.height);
    path.lineTo(10, rrect.height);
    path.quadraticBezierTo(0, rrect.height, 0, rrect.height - 10);

    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    Paint paint = new Paint()
      ..color = _color.withOpacity(0.2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawPath(getOuterPath(rect), paint);
  }

  @override
  ShapeBorder scale(double t) => RoundedRectangleBorder(
        side: _side.scale(t),
        borderRadius: _borderRadius * t,
      );
}
