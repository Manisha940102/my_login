class UserResponse{
  final String accessToken;
  final String tokenType;
  final String userName;
  final String userPermissions;

  UserResponse({this.accessToken, this.tokenType,this.userName,this.userPermissions});

  factory UserResponse.fromJson(Map json) {
    return UserResponse(
      accessToken: json['accessToken'],
      tokenType: json['tokenType'],
      userName: json['userName'],
      userPermissions: json['userPermissions']
    );
  }
  
}