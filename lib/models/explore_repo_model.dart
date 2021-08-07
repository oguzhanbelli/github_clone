import 'package:flutter/material.dart';

class ExploreRepoModel {
  late final String repoName;
  late final String repoDesc;
  late final String? repoLang;
  late final Color? repoLangColor;
  late final String repoStar;

  ExploreRepoModel(
      {required this.repoName,
      required this.repoDesc,
      this.repoLang,
      this.repoLangColor,
      required this.repoStar});
}
