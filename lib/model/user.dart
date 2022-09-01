class User {
  final String userId;
  final String userName;
  final String userNickname;
  final String? userImage;

  User(this.userId, this.userName, this.userNickname, this.userImage);

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'userName': userName,
      'userNickname': userNickname,
      'userImage': userImage
    };
  }

  static User userFromMap(Map<String, dynamic> user) {
    return User(user["userId"], user["userName"], user["userNickname"],
        user["userImage"]);
  }
}
