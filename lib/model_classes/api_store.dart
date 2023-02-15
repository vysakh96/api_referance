class SalesDataModel {
  List<Company>? company;
  String? title;
  Total? total;
  List<Data>? data;
  int? totalCount;

  SalesDataModel(
      {this.company, this.title, this.total, this.data, this.totalCount});

  SalesDataModel.fromJson(Map<String, dynamic> json) {
    if (json['company'] != null) {
      company = <Company>[];
      json['company'].forEach((v) {
        company!.add(new Company.fromJson(v));
      });
    }
    title = json['title'];
    total = json['total'] != null ? new Total.fromJson(json['total']) : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.company != null) {
      data['company'] = this.company!.map((v) => v.toJson()).toList();
    }
    data['title'] = this.title;
    if (this.total != null) {
      data['total'] = this.total!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['totalCount'] = this.totalCount;
    return data;
  }
}

class Company {
  Null? id;
  String? companyName;
  String? companyLocalName;
  Null? customName;
  String? address;
  String? address1;
  Null? licenseNo;
  Null? phoneNo;
  Null? mobileNo;

  Company(
      {this.id,
        this.companyName,
        this.companyLocalName,
        this.customName,
        this.address,
        this.address1,
        this.licenseNo,
        this.phoneNo,
        this.mobileNo});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyName = json['companyName'];
    companyLocalName = json['companyLocalName'];
    customName = json['customName'];
    address = json['address'];
    address1 = json['address1'];
    licenseNo = json['licenseNo'];
    phoneNo = json['phoneNo'];
    mobileNo = json['mobileNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['companyName'] = this.companyName;
    data['companyLocalName'] = this.companyLocalName;
    data['customName'] = this.customName;
    data['address'] = this.address;
    data['address1'] = this.address1;
    data['licenseNo'] = this.licenseNo;
    data['phoneNo'] = this.phoneNo;
    data['mobileNo'] = this.mobileNo;
    return data;
  }
}

class Total {
  int? totalQty;
  int? totalFreeQty;
  double? totalGrossAmount;
  double? totalDiscount;
  double? totalNetValue;
  double? totalTaxAmount;
  double? totalNetAmount;
  int? totalAmount;

  Total(
      {this.totalQty,
        this.totalFreeQty,
        this.totalGrossAmount,
        this.totalDiscount,
        this.totalNetValue,
        this.totalTaxAmount,
        this.totalNetAmount,
        this.totalAmount});

  Total.fromJson(Map<String, dynamic> json) {
    totalQty = json['totalQty'];
    totalFreeQty = json['totalFreeQty'];
    totalGrossAmount = json['totalGrossAmount'];
    totalDiscount = json['totalDiscount'];
    totalNetValue = json['totalNetValue'];
    totalTaxAmount = json['totalTaxAmount'];
    totalNetAmount = json['totalNetAmount'];
    totalAmount = json['totalAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalQty'] = this.totalQty;
    data['totalFreeQty'] = this.totalFreeQty;
    data['totalGrossAmount'] = this.totalGrossAmount;
    data['totalDiscount'] = this.totalDiscount;
    data['totalNetValue'] = this.totalNetValue;
    data['totalTaxAmount'] = this.totalTaxAmount;
    data['totalNetAmount'] = this.totalNetAmount;
    data['totalAmount'] = this.totalAmount;
    return data;
  }
}

class Data {
  String? id;
  String? saleId;
  String? ledgerId;
  String? saleNo;
  String? saleDate;
  String? invoiceNo;
  String? invoiceName;
  String? invoiceDate;
  String? customerName;
  String? phoneNumber;
  String? saleOrderDate;
  String? saleOrderNumber;
  double? grossAmount;
  // double? discountAmount;
  double? netValue;
  double? taxAmount;
  double? netAmount;
  String? seriesId;
  String? wareHouseId;
  String? employeeId;
  String? createdBy;
  String? employeeName;
  String? wareHouseName;
  String? currencyCode;
  int? currencyDecimals;
  String? paymentMode;
  Null? paymentModeMappingId;
  double? roundOff;
  double? additionalExpense;
  int? creditPeriod;
  String? dueDate;
  String? narration;
  String? companyName;
  String? branchName;

  Data(
      {this.id,
        this.saleId,
        this.ledgerId,
        this.saleNo,
        this.saleDate,
        this.invoiceNo,
        this.invoiceName,
        this.invoiceDate,
        this.customerName,
        this.phoneNumber,
        this.saleOrderDate,
        this.saleOrderNumber,
        this.grossAmount,
        // this.discountAmount,
        this.netValue,
        this.taxAmount,
        this.netAmount,
        this.seriesId,
        this.wareHouseId,
        this.employeeId,
        this.createdBy,
        this.employeeName,
        this.wareHouseName,
        this.currencyCode,
        this.currencyDecimals,
        this.paymentMode,
        this.paymentModeMappingId,
        this.roundOff,
        this.additionalExpense,
        this.creditPeriod,
        this.dueDate,
        this.narration,
        this.companyName,
        this.branchName});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    saleId = json['saleId'];
    ledgerId = json['ledgerId'];
    saleNo = json['saleNo'];
    saleDate = json['saleDate'];
    invoiceNo = json['invoiceNo'];
    invoiceName = json['invoiceName'];
    invoiceDate = json['invoiceDate'];
    customerName = json['customerName'];
    phoneNumber = json['phoneNumber'];
    saleOrderDate = json['saleOrderDate'];
    saleOrderNumber = json['saleOrderNumber'];
    grossAmount = json['grossAmount'];
    // discountAmount = json['discountAmount'];
    netValue = json['netValue'];
    taxAmount = json['taxAmount'];
    netAmount = json['netAmount'];
    seriesId = json['seriesId'];
    wareHouseId = json['wareHouseId'];
    employeeId = json['employeeId'];
    createdBy = json['createdBy'];
    employeeName = json['employeeName'];
    wareHouseName = json['wareHouseName'];
    currencyCode = json['currencyCode'];
    currencyDecimals = json['currencyDecimals'];
    paymentMode = json['paymentMode'];
    paymentModeMappingId = json['paymentModeMappingId'];
    roundOff = json['roundOff'];
    additionalExpense = json['additionalExpense'];
    creditPeriod = json['creditPeriod'];
    dueDate = json['dueDate'];
    narration = json['narration'];
    companyName = json['companyName'];
    branchName = json['branchName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['saleId'] = this.saleId;
    data['ledgerId'] = this.ledgerId;
    data['saleNo'] = this.saleNo;
    data['saleDate'] = this.saleDate;
    data['invoiceNo'] = this.invoiceNo;
    data['invoiceName'] = this.invoiceName;
    data['invoiceDate'] = this.invoiceDate;
    data['customerName'] = this.customerName;
    data['phoneNumber'] = this.phoneNumber;
    data['saleOrderDate'] = this.saleOrderDate;
    data['saleOrderNumber'] = this.saleOrderNumber;
    data['grossAmount'] = this.grossAmount;
    // data['discountAmount'] = this.discountAmount;
    data['netValue'] = this.netValue;
    data['taxAmount'] = this.taxAmount;
    data['netAmount'] = this.netAmount;
    data['seriesId'] = this.seriesId;
    data['wareHouseId'] = this.wareHouseId;
    data['employeeId'] = this.employeeId;
    data['createdBy'] = this.createdBy;
    data['employeeName'] = this.employeeName;
    data['wareHouseName'] = this.wareHouseName;
    data['currencyCode'] = this.currencyCode;
    data['currencyDecimals'] = this.currencyDecimals;
    data['paymentMode'] = this.paymentMode;
    data['paymentModeMappingId'] = this.paymentModeMappingId;
    data['roundOff'] = this.roundOff;
    data['additionalExpense'] = this.additionalExpense;
    data['creditPeriod'] = this.creditPeriod;
    data['dueDate'] = this.dueDate;
    data['narration'] = this.narration;
    data['companyName'] = this.companyName;
    data['branchName'] = this.branchName;
    return data;
  }
}
