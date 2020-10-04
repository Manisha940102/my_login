import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_login/models/userResponse.dart';

Future createPost(String url, {Map body}) async {
  Map<String,String> headers = {'Content-Type':'application/json'};
   //String bdy = '{"usernameOrEmail": "oshan", "password": "admin@123"}';
   String jsonUser = jsonEncode(body);
  return http.post(url, headers: headers, body: jsonUser ).then((http.Response response) {
    final int statusCode = response.statusCode;
    final String res = response.body;
    print(res);

    if (statusCode < 200 || statusCode > 400 || json == null) {
      //throw new Exception("Error while fetching data"); 
      return UserResponse.fromJson(json.decode(response.body));
    }
    return UserResponse.fromJson(json.decode(response.body));
  }); 
}

 
  
 

