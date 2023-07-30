import 'package:facebook_clone/widgets/icon_bar.dart';
import 'package:facebook_clone/widgets/new_post_bar.dart';
import 'package:facebook_clone/widgets/post_list_view.dart';
import 'package:facebook_clone/widgets/stories_listview.dart';
import 'package:facebook_clone/widgets/tool_bar.dart';
import 'package:flutter/material.dart';

class FaceBookHome extends StatefulWidget {
  const FaceBookHome({super.key});

  @override
  State<FaceBookHome> createState() => _FaceBookHomeState();
}

class _FaceBookHomeState extends State<FaceBookHome> {
  final profilePic =
      "https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          const ToolBar(),
          IconBar(profilePic: profilePic),
          const Divider(
            thickness: 0.5,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  NewPostBar(profilePic: profilePic),
                  const Divider(
                    color: Colors.black38,
                    thickness: 10,
                  ),
                  StoriesListView(profilePic: profilePic),
                  const Divider(
                    color: Colors.black38,
                    thickness: 10,
                  ),
                  PostListView(profilePic: profilePic),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
