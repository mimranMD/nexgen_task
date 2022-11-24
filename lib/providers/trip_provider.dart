import 'package:flutter/material.dart';
import 'package:nex_gen_task/models/md_trip.dart';
import 'package:nex_gen_task/remoteServices/trip_services.dart';

class TripProvider with ChangeNotifier {
  List<MdTrip> pastTrips = [];
  bool loadingTripData = false;

  Future<void> getTripList({bool? showLoading}) async {
    if (showLoading ?? false) {
      loadingTripData = true;
      notifyListeners();
    }
    dynamic data = await TripsRemoteServices().getPastTripsAPi();
    if (data != null) {
      pastTrips =
          List.from(data['data']).map((trip) => MdTrip.fromJson(trip)).toList();
    }
    loadingTripData = false;
    notifyListeners();
  }
}
