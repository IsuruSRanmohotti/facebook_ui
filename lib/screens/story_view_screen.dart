import 'package:facebook_ui/models/story_model.dart';
import 'package:flutter/material.dart';

class StoryViewScreen extends StatefulWidget {
  final StoryModel story;

  const StoryViewScreen({super.key, required this.story});

  @override
  State<StoryViewScreen> createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {},
                child: Image.network(
                  widget.story.story,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(
            width: size.width,
            height: size.height,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    //left
                    width: size.width / 2,
                    height: size.height,
                    color: Colors.transparent,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Right Side');
                  },
                  child: Container(
                    //right
                    color: Colors.transparent,
                    width: size.width / 2,
                    height: size.height,
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade900,
                    filled: true,
                    hintText: 'Type here..',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            )),
          )
        ],
      ),
    );
  }
}
