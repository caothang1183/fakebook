import 'package:fakebook/models/models.dart';

final posts = [
  Post(
    user: User(
      username: "Thắng Nguyễn",
      imageUrl: "https://i.pravatar.cc/300?img=1",
    ),
    imageUrl: "https://picsum.photos/id/261/400/500",
    caption: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
    comments: 999,
    likes: 1001,
    shares: 123,
    timeAgo: DateTime.now().toString(),
  ),
  Post(
    user: User(
      username: "Nhox Ku",
      imageUrl: "https://i.pravatar.cc/300?img=6",
    ),
    imageUrl: "https://picsum.photos/id/232/500/300",
    caption: "Well Freaking Caption",
    comments: 999,
    likes: 1000000,
    shares: 321,
    timeAgo: DateTime.now().subtract(Duration(minutes: 5)).toString(),
  ),
  Post(
    user: User(
      username: "Duy Sniper",
      imageUrl: "https://i.pravatar.cc/300?img=5",
    ),
    imageUrl: "https://picsum.photos/id/267/500/300",
    caption: "Once we get the current date, we can also retrieve individual units of the date, ie month, year, day, seconds, hour , minute and so on, as shown below",
    comments: 100,
    likes: 899,
    shares: 123,
    timeAgo: DateTime.now().subtract(Duration(minutes: 70)).toString(),
  ),
];
