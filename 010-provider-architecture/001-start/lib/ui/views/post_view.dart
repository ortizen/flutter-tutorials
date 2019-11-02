import 'package:flutter/material.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/shared/app_colors.dart' as prefix0;
import 'package:provider_architecture/ui/shared/ui_helpers.dart';
import 'package:provider_architecture/core/models/user.dart';
import 'package:provider_architecture/ui/widgets/comments.dart';
import 'package:provider/provider.dart';

class PostView extends StatelessWidget {
  final Post post;
  PostView({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: prefix0.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UIHelper.verticalSpaceLarge(),
            Text(
              'by ${Provider.of<User>(context).name}',
              style: TextStyle(fontSize: 9.0),
            ),
            UIHelper.verticalSpaceMedium(),
            Text(post.body),
            Comments(post.id),
          ],
        ),
      ),
    );
  }
}
