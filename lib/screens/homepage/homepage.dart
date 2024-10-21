import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/custom_tab_bar.dart';
import 'widgets/home_option_bar.dart';
import 'widgets/post_list_view.dart';
import 'widgets/post_publish_space.dart';
import 'widgets/story_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(),
              const CustomTabBar(),
              Divider(
                color: Colors.grey.shade500,
              ),
              const PostPublishSpace(),
              Divider(
                color: Colors.grey.shade600,
              ),
              const HomeOptionBar(),
              Divider(
                thickness: 8,
                color: Colors.grey.shade600,
              ),
              const SizedBox(
                height: 10,
              ),
              const StoryListView(),
              const SizedBox(
                height: 8,
              ),
              Divider(
                thickness: 8,
                color: Colors.grey.shade600,
              ),
              const PostListView()
            ],
          ),
        ),
      ),
    );
  }
}
