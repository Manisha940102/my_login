class User{
  final String email;
  final String password;

  User({this.email, this.password}); 

  Map toJson() {
    var map = new Map();
    map["usernameOrEmail"] = email;
    map["password"] = password;

    return map;
  }
  /*String _email;
  String _password;

  User(this._email,this._password);

  String get email => _email;
  String get password => _password;

  set email (String newEmail){
    if(newEmail.length <= 255){
      _email = newEmail;
    }
  }

  set password (String newPassword){
    if(newPassword.length <= 255){
      _password = newPassword;
    }
  }

  Map<String,dynamic> toMap(){
    var map = Map<String, dynamic>();
    map["email"] = _email;
    map["password"] = _password;
    return map;
  }*/
}