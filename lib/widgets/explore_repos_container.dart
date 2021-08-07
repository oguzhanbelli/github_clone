import 'package:flutter/cupertino.dart';
import 'package:github_clone/config/palette.dart';
import 'package:github_clone/data/data.dart';
import 'package:github_clone/models/models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class ExploreReposContainer extends StatelessWidget {
  late final User currentUser;

  ExploreReposContainer({required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Palette.scaffold,
      child: Container(
        color: Palette.scaffold,
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0.0),
          color: Palette.scaffold,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Explore Repositories",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: expRepoList.length,
                  itemBuilder: (context, index) {
                    var expRepo = expRepoList[index];
                    return Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Material(
                                color: Palette.scaffold,
                                child: InkWell(
                                  hoverColor: Colors.white.withOpacity(0.1),
                                  onTap: () {},
                                  child: Text(
                                    "${expRepo.repoName}",
                                    maxLines: 2,
                                    softWrap: true,
                                    style: GoogleFonts.quicksand(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "${expRepo.repoDesc}",
                                maxLines: 4,
                                softWrap: true,
                                style: GoogleFonts.quicksand(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Mdi.brightness1,
                              color: expRepo.repoLangColor,
                              size: 10,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "${expRepo.repoLang}",
                              style: GoogleFonts.quicksand(
                                color: Colors.white.withOpacity(0.4),
                                fontSize: 11,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Mdi.starOutline,
                              color: Colors.white.withOpacity(0.7),
                              size: 13,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "${expRepo.repoStar}",
                              style: GoogleFonts.quicksand(
                                color: Colors.white.withOpacity(0.4),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        expRepoList.last == expRepoList[index]
                            ? Center()
                            : Divider(
                                height: 1,
                                color: Colors.white.withOpacity(0.8),
                                thickness: 0.1,
                              ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Material(
                      color: Palette.scaffold,
                      child: InkWell(
                        hoverColor: Colors.white.withOpacity(0.1),
                        onTap: () {},
                        child: Text(
                          "Explore More →",
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
            ],
          ),
        ),
      ),
    );
  }
}
