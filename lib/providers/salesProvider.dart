import 'package:flutter/cupertino.dart';
import 'package:trade_task_riv/model_classes/api_store.dart';
import 'package:trade_task_riv/services/api_services.dart';

class SalesProvider extends ChangeNotifier{

  SalesDataModel salesData = new SalesDataModel();
  List<Data>? data;

  getSalesSummary()async{
    ApiService().getSalesData().then((value) {
      salesData=value;
      data=value.data;
      notifyListeners();
    });
  }
}