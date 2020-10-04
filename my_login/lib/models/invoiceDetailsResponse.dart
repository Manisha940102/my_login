class InvoiceDetailsResponse {
  bool success;
  Null message;
  String object;

  InvoiceDetailsResponse({this.success, this.message, this.object});

  InvoiceDetailsResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    object = json['object'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['object'] = this.object;
    return data;
  }
}