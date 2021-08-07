import 'package:flutter/material.dart';
import 'package:github_clone/config/palette.dart';
import 'package:github_clone/models/models.dart';

class AllActivityContainer extends StatelessWidget {
  late final User currentUser;

  AllActivityContainer({required this.currentUser});

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
          child: Column(),
        ),
      ),
    );
  }
}
