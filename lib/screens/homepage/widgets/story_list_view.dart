import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/demo_data.dart';
import '../../story_view_screen.dart';

class StoryListView extends StatelessWidget {
  const StoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 218,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DemoData.stories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: index != 0
                ? InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => StoryViewScreen(
                                    story: DemoData.stories[index],
                                  )));
                    },
                    child: Container(
                        width: 150,
                        height: 210,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    NetworkImage(DemoData.stories[index].story),
                                fit: BoxFit.cover)),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 8,
                              left: 8,
                              child: CircleAvatar(
                                radius: 27,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: NetworkImage(
                                      DemoData.stories[index].profilePicture),
                                ),
                              ),
                            )
                          ],
                        )),
                  )
                : Container(
                    width: 150,
                    height: 210,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all()),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 160,
                          child: Stack(
                            children: [
                              Container(
                                width: 150,
                                height: 135,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            DemoData.demoProfilePicture),
                                        fit: BoxFit.cover),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15))),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.blue,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Create Story',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}