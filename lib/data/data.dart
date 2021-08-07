import 'package:flutter/material.dart';
import 'package:github_clone/models/models.dart';
import 'package:github_clone/models/repo_model.dart';

final User currentUser = User(
  name: 'Oğuzhan Belli',
  imageUrl: 'https://avatars.githubusercontent.com/u/75687376?v=4',
);
final List<ActivityModel> activityList = [
  ActivityModel(
    userName: "oguzhanbelli",
    userPhoto:
        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    followingName: "Emirhan Belli",
    followingUserPhoto:
        "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80",
    followingUserName: "emirhanbelli",
    followingRepo: "7",
    followingFollowers: "8",
  ),
  ActivityModel(
    userName: "mahmutandiran",
    userPhoto:
        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    followingName: "Caner Kıran",
    followingUserPhoto:
        "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80",
    followingUserName: "canerkiran",
    followingRepo: "10",
    followingFollowers: "20",
  ),
];

final List<RepoModel> repoList = [
  RepoModel(repoName: "oguzhanbelli/JavaCamp"),
  RepoModel(repoName: "oguzhanbelli/hrms"),
  RepoModel(repoName: "oguzhanbelli/ReactCamp"),
  RepoModel(repoName: "oguzhanbelli/hrmsfrontend"),
  RepoModel(repoName: "oguzhanbelli/oguzhanbelli"),
  RepoModel(repoName: "oguzhanbelli/kodluyoruzilkrepo"),
  RepoModel(repoName: "oguzhanbelli/slidesfilm"),
  RepoModel(repoName: "oguzhanbelli/yemektarifleri"),
  RepoModel(repoName: "oguzhanbelli/facebook-clone"),
  RepoModel(repoName: "oguzhanbelli/github-clone"),
];

final List<ExploreRepoModel> expRepoList = [
  ExploreRepoModel(
      repoName: "gdgluanda/rapidinho",
      repoDesc: "Unofficial delivery app for Rapidinho made with Flutter",
      repoStar: "173",
      repoLangColor: Color(0xff00B4AB),
      repoLang: "Dart"),
  ExploreRepoModel(
      repoName: "Kodluyoruz/taskforce",
      repoDesc:
          "Taskforce ile amacımız topluluk destekli ve açık kaynaklı eğitim içerikleri oluşturmak ve programlama öğrenmek isteyen kişilere temelden ileri seviyeye kadar proje bazlı içerikler sağlamak.",
      repoStar: "186",
      repoLangColor: Color(0xffe34c26),
      repoLang: "HTML"),
  ExploreRepoModel(
      repoName: "RameshMF/springboot-thymeleaf-crud-pagination-sorting-webapp",
      repoDesc:
          "Spring Boot CRUD Web application with Pagination and Sorting features using Spring Boot, ThymeLeaf, Spring Data JPA, Hibernate, MySQL database",
      repoStar: "51",
      repoLangColor: Color(0xffb07219),
      repoLang: "Java"),
];
