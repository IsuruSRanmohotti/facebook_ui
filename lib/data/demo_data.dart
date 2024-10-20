import 'package:facebook_ui/models/post_model.dart';
import 'package:facebook_ui/models/story_model.dart';

class DemoData {
  static List<StoryModel> stories = [
    StoryModel(profilePicture: '', story: ''),
    StoryModel(
      profilePicture:
          'https://mrwallpaper.com/images/thumbnail/aesthetic-profile-pictures-girl-in-black-4ev1bzoxrlk3vk3h.webp',
      story:
          'https://preview.redd.it/new-profile-pictures-for-yall-v0-brdjms2xte3c1.jpg?width=720&format=pjpg&auto=webp&s=ee4dd7a6b958c218987219c7ba5311424d2a3345',
    ),
    StoryModel(
        profilePicture:
            'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
        story:
            'https://imgcdn.stablediffusionweb.com/2024/4/12/9f800b72-7593-4b2c-a131-df245a519f7a.jpg'),
    StoryModel(
        profilePicture:
            'https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/e9b68ea9-5883-4334-82f3-9504663a0a86/51360148-a7ad-4e47-9dc0-3b4cae073c24.png',
        story:
            'https://i.pinimg.com/236x/db/1f/9a/db1f9a3eaca4758faae5f83947fa807c.jpg')
  ];

  static String demoProfilePicture =
      'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg';

  static List<PostModel> postList = [
    PostModel(
        name: 'Kasun chamara',
        profilePicture:
            'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
        postImage:
            'https://wallpapers.com/images/hd/instagram-profile-pictures-kx8z30go1u5u0q31.jpg',
        time: '18 minutes ago', 
        reacts: 126,
        commentCount: 53
        ),
    PostModel(
        name: 'Sanduni kawushalya',
        caption: 'Hello There 😀',
        profilePicture:
            'https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/e9b68ea9-5883-4334-82f3-9504663a0a86/51360148-a7ad-4e47-9dc0-3b4cae073c24.png',
        postImage:
            'https://www.elitesingles.com/wp-content/uploads/sites/85/2020/06/elite_singles_slide_6-350x264.png',
        time: '1 Hour ago',
        commentCount: 3,
        reacts: 16
        )
  ];
}
