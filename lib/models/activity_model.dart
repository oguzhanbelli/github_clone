class ActivityModel {
  late final String userName;
  late final String userPhoto;
  late final String followingName;
  late final String followingUserPhoto;
  late final String followingUserName;
  late final String followingRepo;

  late final String followingFollowers;

  ActivityModel(
      {required this.userName,
      required this.userPhoto,
      required this.followingName,
      required this.followingUserPhoto,
      required this.followingUserName,
      required this.followingRepo,
      required this.followingFollowers});
}
