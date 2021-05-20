class Comment {
  final AvartarUser user;
  final String content;
  final DateTime postedAt;
  final int likes;
  final int dislikes;
  final List<Comment> replies;
  final String replyTo;

  Comment(
      {this.content,
      this.dislikes = 0,
      this.likes = 0,
      this.postedAt,
      this.user,
      this.replies = const [],
      this.replyTo});

  bool get isReply => replyTo != null && replyTo.isNotEmpty;
}

class AvartarUser {
  String photoURL;
  String name;
  String id;

  AvartarUser({this.id, this.name, this.photoURL});

  toMap() {
    return {'photoURL': photoURL, 'name': name, 'id': id};
  }
}
