import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:trade_task_riv/model_classes/api_store.dart';
import 'package:trade_task_riv/services/api_client.dart';


class ApiService{
  Future<SalesDataModel> getSalesData() async {
    final url = APIClients().salesSummaryURL(1, 10, false, "all", "", "2023-02-01", "2023-02-14");
    print(url);
    var response = await http.get(Uri.parse(url),headers: {"dbName":"mysaledb33011114564"} );
    print(response);
    print(response.statusCode);
    print(response.body);
    var jsonData = json.decode(response.body);
    SalesDataModel data = SalesDataModel.fromJson(jsonData);
    return data;
  }
}