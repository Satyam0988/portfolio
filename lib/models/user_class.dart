// ignore: camel_case_types
class user_class {
  final String uid;
  user_class({required this.uid});
}

class BlogData {
  final String uid;
  final String title;
  final String upvotes;
  final String author;
  final String readingTime;
  final String content;
  final String date;

  BlogData(
      {required this.uid,
      required this.readingTime,
      required this.author,
      required this.content,
      required this.title,
      required this.upvotes,
      required this.date});
}
