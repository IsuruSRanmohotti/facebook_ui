import 'package:facebook_ui/data/demo_data.dart';
import 'package:flutter/material.dart';

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('facebook',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade600)),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.grey.shade300)),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.grey.shade300)),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.messenger),
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.grey.shade300)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.blue.shade600,
                    ),
                    Icon(
                      Icons.people_outline,
                      size: 40,
                      color: Colors.grey.shade700,
                    ),
                    Icon(
                      Icons.ondemand_video_outlined,
                      size: 40,
                      color: Colors.grey.shade700,
                    ),
                    Icon(
                      Icons.maps_home_work_outlined,
                      size: 40,
                      color: Colors.grey.shade700,
                    ),
                    Icon(
                      Icons.notifications_none,
                      size: 40,
                      color: Colors.grey.shade700,
                    ),
                    Icon(
                      Icons.menu,
                      size: 40,
                      color: Colors.grey.shade700,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade500,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          NetworkImage(DemoData.demoProfilePicture),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Whats on your mind?',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                    ))
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade600,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.video_call_rounded,
                          color: Colors.red,
                          size: 35,
                        ),
                        Text(
                          'Live',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.image,
                          color: Colors.green,
                          size: 35,
                        ),
                        Text(
                          'Photo',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.face,
                          color: Colors.amber.shade600,
                          size: 35,
                        ),
                        const Text(
                          'Feeling/Activity',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 8,
                color: Colors.grey.shade600,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 218,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: DemoData.stories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: index != 0
                          ? Container(
                              width: 150,
                              height: 210,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          DemoData.stories[index].story),
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
                                        backgroundImage: NetworkImage(DemoData
                                            .stories[index].profilePicture),
                                      ),
                                    ),
                                  )
                                ],
                              ))
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
                                                  image: NetworkImage(DemoData
                                                      .demoProfilePicture),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(15),
                                                      topRight:
                                                          Radius.circular(15))),
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
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Divider(
                thickness: 8,
                color: Colors.grey.shade600,
              ),
              ListView.builder(
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      DemoData.postList[index].time,
                                      style: TextStyle(
                                          color: Colors.grey.shade800),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
