import 'package:flutter/material.dart';
import 'package:github_clone/config/palette.dart';
import 'package:github_clone/data/data.dart';
import 'package:github_clone/models/models.dart';
import 'package:github_clone/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';
import 'package:github_clone/data/data.dart';

class RepositoriesContainer extends StatelessWidget {
  late final User currentUser;

  RepositoriesContainer({required this.currentUser});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Material(
      child: Container(
        color: Palette.githubrepoGrey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          color: Palette.githubrepoGrey,
          child: Column(
            children: [
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Repositories",
                            style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 25,
                            width: 65,
                            child: OutlinedButton.icon(
                              onPressed: () => print("Room"),
                              icon: Icon(
                                Mdi.book,
                                color: Colors.white,
                                size: 14,
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Palette.githubGreen,
                                side: BorderSide.none,
                              ),
                              label: Text(
                                "New",
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                            width: isDesktop
                                ? MediaQuery.of(context).size.width / 6
                                : MediaQuery.of(context).size.width / 7,
                            child: TextField(
                              autofocus: false,
                              onTap: () {},
                              style: TextStyle(
                                  fontSize: 11.0, color: Palette.githubWhite),
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
                                contentPadding:
                                    EdgeInsets.only(top: 15, left: 15),
                                hintText: "Find a repository...",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        itemCount: repoList.length,
                        itemBuilder: (context, index) {
                          var repo = repoList[index];
                          return Material(
                            color: Palette.githubrepoGrey,
                            child: InkWell(
                              onTap: () {},
                              child: GestureDetector(
                                onTap: () {},
                                child: SizedBox(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Mdi.book,
                                            color: Colors.grey,
                                            size: 14,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "${repo.repoName}",
                                              maxLines:2,
                                              softWrap: true,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.quicksand(
                                                color: Palette.githubBlue,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Material(
                              color: Palette.githubrepoGrey,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Show More",
                                  style: GoogleFonts.quicksand(
                                    color: Palette.githubWhite.withOpacity(0.6),
                                    fontSize: 9,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 1,
                        color: Palette.githubWhite.withOpacity(0.2),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Recent activity",
                                style: GoogleFonts.quicksand(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "When you take actions across GitHub, we’ll provide links to that activity here.",
                            style: GoogleFonts.quicksand(
                              color: Palette.githubWhite.withOpacity(0.4),
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
