import 'dart:convert';
//import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:my_login/models/invoiceDetailsResponse.dart';

Future createInvoicePost(String url, String accessToken) async {
  String token = 'Bearer '+ accessToken;
  Map<String,String> headers = {'Content-Type':'application/json','Authorization':token };
   String bdy = '{"startDate": "2020-07-01", "endDate": "2020-07-31", "customerId":-1,"buyerId":-1,"searchOption":"","searchValue":"","isSummery":false,"status":"A" }';
   //String jsonUser = jsonEncode(bdy);
  return http.post(url, headers: headers, body: bdy ).then((http.Response response) {
    final int statusCode = response.statusCode;
    final String res = response.body;
    print(res);

    if (statusCode < 200 || statusCode > 400 || json == null) {
      //throw new Exception("Error while fetching data"); 
      return InvoiceDetailsResponse.fromJson(json.decode(response.body));
    }
    return InvoiceDetailsResponse.fromJson(json.decode(response.body));
  }); 
}
