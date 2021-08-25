import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/models/user_class.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid = ''});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("Users");

  final CollectionReference blogsCollection =
      FirebaseFirestore.instance.collection("All Blogs");

  Future setUserData() async {
    return await userCollection
        .doc(uid)
        .collection("Profile")
        .doc("ProfileData")
        .set({"name": "New Member"})
        .then((value) => print("Added User"))
        .catchError((error) {
          return error;
        });
  }

  Future addBlogData(BlogData blog) async {
    await blogsCollection
        .doc("$uid-${blog.title}")
        .set({
          "uid": uid,
          "title": blog.title,
          "upvotes": blog.upvotes,
          "author": blog.author,
          "readingTime": blog.readingTime,
          "content": blog.content,
          "date": blog.date
        })
        .then((value) => print("Added Blog to All Blogs"))
        .catchError((error) {
          return error;
        });
    return await userCollection
        .doc(uid)
        .collection("Blogs")
        .doc("$uid-${blog.title}")
        .set({
          "uid": uid,
          "title": blog.title,
          "upvotes": blog.upvotes,
          "author": blog.author,
          "readingTime": blog.readingTime,
          "content": blog.content,
          "date": blog.date
        })
        .then((value) => print("Added Blog to User Collection"))
        .catchError((error) {
          return error;
        });
  }

  Future upvoteBlog(BlogData blog) async {
    await blogsCollection
        .doc("${blog.uid}-${blog.title}")
        .update({
          "upvotes": (int.parse(blog.upvotes) + 1).toString(),
        })
        .then((value) => print("Updated upvotes in All Blogs"))
        .catchError((error) {
          return error;
        });
    return await userCollection
        .doc(blog.uid)
        .collection("Blogs")
        .doc("${blog.uid}-${blog.title}")
        .update({
          "upvotes": (int.parse(blog.upvotes) + 1).toString(),
        })
        .then((value) => print("Updated upvotes in User Collection"))
        .catchError((error) {
          return error;
        });
  }

  List<BlogData> _allBlogsListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return BlogData(
        uid: doc.get('uid') ?? '',
        author: doc.get('author') ?? '',
        title: doc.get('title') ?? '',
        content: doc.get('content') ?? '',
        upvotes: doc.get('upvotes') ?? '',
        readingTime: doc.get('readingTime') ?? '',
        date: doc.get('date') ?? '',
      );
    }).toList();
  }

  Stream<List<BlogData>> get allBlogsList {
    return blogsCollection.snapshots().map(_allBlogsListFromSnapshot);
  }
}
