import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../utils/utilities.dart';

class TripsRemoteServices {
  ///get product type ordersLIst
  Future<dynamic> getPastTripsAPi() async {
    Map<String, String> authenticatedHeaders = {
      "Accept": "application/json",
      "Authorization": "Bearer ${Utilities.userToken}",
    };

    try {
      http.Response response = await http.get(
          Uri.parse("https://staging.pyxisride.com/api/user/mobile/trips"),
          headers: authenticatedHeaders);
      log("orders or booking listing status code: ${response.statusCode}");
      log("orders or booking listing body data: ${response.body}");
      log("orders or booking listing request: ${response.request}");
      dynamic data = jsonDecode(response.body);
      if (response.statusCode == 200 &&
          data['success'] != null &&
          data['success']) {
        dynamic data = jsonDecode(response.body);
        return data;
      } else {
        return null;
      }
    } catch (e) {
      log("exception: ${e.toString()}");
      return null;
    }
  }
}
