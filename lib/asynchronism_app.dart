import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart' show Response;

void runAsynchronismApp() {
  print('Asynchronism App Started');

  requestAsyncData();
}

// void requestData() {
//   String url =
//       "https://gist.githubusercontent.com/sntsbia/7a295e5b169be3438ed587cc1a86c8f8/raw/e7f5ae15b56afe64be1af9b8253baec3ddc36ef5/accounts.json";

//   Future<Response> futureResponse = http.get(Uri.parse(url));

//   futureResponse.then((Response response) {
//     print("Status code: ${response.statusCode}");
//     print(response.body);
//     List<dynamic> accounts = json.decode(response.body);

//     Map<String, dynamic> mapCarla = accounts.firstWhere(
//       (element) => element["name"] == "Carla",
//     );
//     print(mapCarla);
//   });
// }

void requestAsyncData() async {
  String url =
      "https://gist.githubusercontent.com/sntsbia/7a295e5b169be3438ed587cc1a86c8f8/raw/e7f5ae15b56afe64be1af9b8253baec3ddc36ef5/accounts.json";

  Response response = await http.get(Uri.parse(url));

  print("Status code: ${response.statusCode}");

  List<dynamic> accounts = json.decode(response.body);
  print(accounts[0]);

  Map<String, dynamic> mapCarla = accounts.firstWhere(
    (element) => element["name"] == "Carla",
  );
  print(mapCarla);
}
