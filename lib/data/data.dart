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
    starredRepoName: "spf13/cast",
    starredRepoDesc: "safe and easy casting from one type to another in Go",
    activityDate: "5 hours ago",
    starredRepoLang: "Go",
    starredRepoLangColor: Color(0xff00B4AB),
    starredRepoStars: "1.6k",
    starredRepoDate: "Updated Aug 7",
  ),
  ActivityModel(
    userName: "oguzhanbelli",
    userPhoto:
        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    starredRepoName: "deepopinion/domain-adapted-atsc",
    starredRepoDesc:
        """code for our 2019 paper: "Adapt or Get Left Behind: Domain Adaptation through BERT Language Model Finetuning for Aspect-Target Sentiment Classific…""",
    activityDate: "yesterday",
    starredRepoLang: "Python",
    starredRepoLangColor: Color(0xff00B4AB),
    starredRepoStars: "138",
    starredRepoDate: "Updated Aug 6",
  ),
  ActivityModel(
    userName: "oguzhanbelli",
    userPhoto:
        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    starredRepoName: "spf13/cast",
    starredRepoDesc: "safe and easy casting from one type to another in Go",
    activityDate: "5 hours ago",
    starredRepoLang: "HTML",
    starredRepoLangColor: Color(0xffe34c26),
    starredRepoStars: "138",
    starredRepoDate: "Updated Aug 7",
  ),
  ActivityModel(
    userName: "oguzhanbelli",
    userPhoto:
        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    starredRepoName: "spf13/cast",
    starredRepoDesc: "safe and easy casting from one type to another in Go",
    activityDate: "5 hours ago",
    starredRepoLang: "Java",
    starredRepoLangColor: Color(0xffb07219),
    starredRepoStars: "148",
    starredRepoDate: "Updated Aug 7",
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
