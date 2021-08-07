import 'package:flutter/material.dart';
import 'package:github_clone/config/palette.dart';
import 'package:github_clone/data/data.dart';
import 'package:github_clone/models/models.dart';
import 'package:github_clone/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class AllActivityContainer extends StatelessWidget {
  late final User currentUser;

  AllActivityContainer({required this.currentUser});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    return Container(
      color: Palette.scaffold,
      child: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.fromLTRB(30.0, 30.0, 20.0, 0.0),
        color: Palette.scaffold,
        child: SingleChildScrollView(
          child: Column(

            children: [
              Row(

                children: [
                  Text(
                    "All Activity",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: new ListView.builder(
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: activityList.length,
                  itemBuilder: (context, index) {
                    var activity = activityList[index];

                    return Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: ClipOval(
                                child: Image.network(
                                  currentUser.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                "${activity.userName} starred ${activity.starredRepoName}",
                                maxLines: 3,
                                softWrap: true,
                                style: GoogleFonts.quicksand(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "${activity.activityDate}",
                              maxLines: 3,
                              softWrap: true,
                              style: GoogleFonts.quicksand(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 9,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Palette.gitHubHeadBg.withOpacity(0.7),
                            border: Border.all(
                                color: Palette.githubWhite.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 5),
                                      child: Text(
                                        "${activity.starredRepoName}",
                                        style: GoogleFonts.quicksand(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 15, 5),
                                    child: OutlinedButton.icon(
                                      style: OutlinedButton.styleFrom(
                                          backgroundColor:
                                              Palette.githubrepoGrey,
                                          primary: Palette.githubWhite,
                                          alignment: Alignment.center),
                                      onPressed: () {},
                                      icon: Icon(
                                        Mdi.starOutline,
                                        size: 12,
                                      ),
                                      label: Text(
                                        "Star",
                                        style: GoogleFonts.quicksand(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${activity.starredRepoDesc}",
                                        maxLines: 3,
                                        softWrap: true,
                                        style: GoogleFonts.quicksand(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 0, 5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Mdi.brightness1,
                                      color: activity.starredRepoLangColor,
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "${activity.starredRepoLang}",
                                      style: GoogleFonts.quicksand(
                                        color: Colors.white.withOpacity(0.4),
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    OutlinedButton.icon(
                                      style: OutlinedButton.styleFrom(
                                          backgroundColor:
                                          Palette.gitHubHeadBg,
                                          primary: Palette.githubWhite,
                                          alignment: Alignment.center),
                                      onPressed: () {},
                                      icon: Icon(
                                        Mdi.starOutline,
                                        size: 12,
                                      ),
                                      label: Text(
                                        "${activity.starredRepoStars}",
                                        style: GoogleFonts.quicksand(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    isMobile ? Spacer() : Center(),
                                    Text(
                                      "${activity.starredRepoDate}",
                                      style: GoogleFonts.quicksand(
                                        color: Colors.white.withOpacity(0.4),
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
