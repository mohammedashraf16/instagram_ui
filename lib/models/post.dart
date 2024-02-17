class Post {
  int id;
  String dateTime;
  String userName;
  String imageUserUrl;
  String postImageUrl;
  String likedBy;

  Post(
      {required this.id,
      required this.dateTime,
      required this.userName,
      required this.imageUserUrl,
      required this.postImageUrl,
      required this.likedBy});
}