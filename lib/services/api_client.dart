class APIClients{

  static const Base_Url = "https://mysaleappreportsapi-7lfpakcp7q-el.a.run.app";

  String salesSummaryURL(int pageNo, int pageSize, bool desc, String searchType,String searchQuery,
      String startDate,String endDate){
    return "$Base_Url/api/Sale?pageNo=$pageNo&pageSize=$pageSize&desc=$desc&searchType=$searchType&searchQuery=$searchQuery&startDate=$startDate&endDate=$endDate";
  }

}

// class APIClients {
//   static const BASE_URL = "https://mysaleappreportsapi-7lfpakcp7q-el.a.run.app";
//
//   String salesSummaryURL(int pageNo, int pageSize, bool desc, String searchType,
//       String searchQuery, String startDate, String endDate) {
//     return "$BASE_URL/api/Sale?pageNo=$pageNo&pageSize=$pageSize&desc=$desc&searchType=$searchType&searchQuery=$searchQuery&startDate=$startDate&endDate=$endDate";
//   }
//
//   String resport = "$BASE_URL/saleareport";
// }