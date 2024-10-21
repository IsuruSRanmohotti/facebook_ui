import 'package:facebook_ui/data/demo_data.dart';
import 'package:flutter/material.dart';

class PostListView extends StatelessWidget {
  const PostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: DemoData.postList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 32,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                            DemoData.postList[index].profilePicture),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DemoData.postList[index].name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            DemoData.postList[index].time,
                            style: TextStyle(color: Colors.grey.shade800),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.public,
                            color: Colors.grey.shade800,
                            size: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.more_horiz_outlined),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(Icons.close)
                ],
              ),
            ),
            DemoData.postList[index].caption != null
                ? Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        DemoData.postList[index].caption!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                : const SizedBox(),
            Image.network(
              DemoData.postList[index].postImage,
              fit: BoxFit.cover,
              width: MediaQuery.sizeOf(context).width,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 10,
                    child: Icon(
                      Icons.thumb_up,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 10,
                    child: Icon(
                      Icons.favorite,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(DemoData.postList[index].reacts.toString()),
                  const Spacer(),
                  Text(
                      '${DemoData.postList[index].commentCount.toString()} Comments')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'Like',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.comment,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'Comment',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'Share',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider()
          ],
        );
      },
    );
  }
}