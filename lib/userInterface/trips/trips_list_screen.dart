import 'package:flutter/material.dart';
import 'package:nex_gen_task/providers/trip_provider.dart';
import 'package:nex_gen_task/userInterface/commonComponents/leading_title_app_bar.dart';
import 'package:nex_gen_task/userInterface/commonComponents/top_bottom_safe_area.dart';
import 'package:nex_gen_task/userInterface/trips/trip_detail_screen.dart';
import 'package:provider/provider.dart';
import '../commonComponents/trip_widget.dart';

class TripList extends StatefulWidget {
  const TripList({Key? key}) : super(key: key);

  @override
  State<TripList> createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  @override
  void initState() {
    final tripProvider = Provider.of<TripProvider>(context, listen: false);
    Future.delayed(const Duration(milliseconds: 100), () {
      tripProvider.getTripList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tripProvider = Provider.of<TripProvider>(context);
    Widget tripsListWidget() {
      if (tripProvider.loadingTripData) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return ListView.builder(
            itemCount: tripProvider.pastTrips.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TripDetailScreen(
                            trip: tripProvider.pastTrips[index])));
                  },
                  child: TripWidget(mdTrip: tripProvider.pastTrips[index]));
            });
      }
    }

    return Stack(
      children: [
        Scaffold(
          appBar: const LeadingTitleAppBar(
            title: "Past Trips",
            showLeading: true,
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    tripsListWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
        TopBottomPaddings(context: context, isUpper: true),
        TopBottomPaddings(context: context, isUpper: false)
      ],
    );
  }
}
