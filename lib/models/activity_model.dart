import 'package:flutter/material.dart';

class ActivityModel {
  late final String userName;
  late final String userPhoto;
  late final String starredRepoName;
  late final String starredRepoDesc;
  late final String activityDate;
  late final String starredRepoLang;
  late final Color starredRepoLangColor;
  late final String starredRepoStars;
  late final String starredRepoDate;

  ActivityModel(
      {required this.userName,
      required this.userPhoto,
      required this.starredRepoName,
      required this.starredRepoDesc,
      required this.activityDate,
      required this.starredRepoLang,
      required this.starredRepoLangColor,
      required this.starredRepoStars,
      required this.starredRepoDate});
}
