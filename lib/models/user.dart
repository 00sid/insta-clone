class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final List followers;
  final List following;
  final String bio;

  const User({
    required this.email,
    required this.uid,
    required this.photoUrl,
    required this.username,
    required this.bio,
    required this.followers,
    required this.following,
  });
  Map<String, dynamic> toJason() => {
        "username": username,
        "uid": uid,
        "photoUrl": photoUrl,
        "email": email,
        "bio": bio,
        "followers": followers,
        "following": following
      };
}
