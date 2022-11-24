import 'package:flutter/material.dart';
import 'package:nex_gen_task/models/md_trip.dart';
import 'package:nex_gen_task/userInterface/commonComponents/leading_title_app_bar.dart';
import '../commonComponents/top_bottom_safe_area.dart';

class TripDetailScreen extends StatelessWidget {
  final MdTrip trip;

  const TripDetailScreen({Key? key, required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: const LeadingTitleAppBar(
            title: "Trip Detail",
            showLeading: true,
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const Center(
              child: Text("Trip detail"),
            ),
          ),
        ),
        TopBottomPaddings(context: context, isUpper: true),
        TopBottomPaddings(context: context, isUpper: false)
      ],
    );
  }
}
