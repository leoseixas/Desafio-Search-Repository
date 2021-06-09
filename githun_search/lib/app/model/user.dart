class User {
  User({this.name, this.username, this.bio, this.image});

  String name;
  String username;
  String bio;
  String image;

  @override
  String toString() {
    return 'user: {name: $name, username: $username, bio: $bio, image: $image}';
  }
}
