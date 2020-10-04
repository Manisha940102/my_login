class Invoice{
  String startDate;
  String endDate;
  String customerId;
  String buyerId;
  String searchOption;
  String searchValue;
  String isSummery;
  String status;

  Invoice({this.startDate, this.endDate,this.customerId,this.buyerId,this.searchOption,this.searchValue,this.isSummery,this.status});

   Map toJson() {
    var map = new Map();
    map["startDate"] = startDate;
    map["endDate"] = endDate;
    map["customerId"] = customerId;
    map["buyerId"] = buyerId;
    map["searchOption"] = searchOption;
    map["searchValue"] = searchValue;
    map["isSummery"] = isSummery;
    map["status"] = status;
    return map;
  }

  /* Invoice.fromJson(Map<String, dynamic> json) {

    startDate = json['startDate'];
    endDate = json['endDate'];
    customerId = json['customerId'];
    buyerId = json['buyerId'];
    searchOption = json['searchOption'];
    searchValue = json['searchValue'];
    isSummery = json['isSummery'];
    status = json['status'];
  } */

}

//InvoiceDetails invoiceDetails = await createInvoicePost(createInvoicePostUrl, body: userPost.toJson());