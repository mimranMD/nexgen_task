import 'package:flutter/material.dart';
import 'package:nex_gen_task/designExtentions/colors.dart';
import 'package:nex_gen_task/models/md_trip.dart';
import 'package:nex_gen_task/userInterface/commonComponents/image_widget.dart';
import '../../designExtentions/text_styles/text_styles.dart';

class TripWidget extends StatelessWidget {
  final MdTrip mdTrip;

  const TripWidget({Key? key, required this.mdTrip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      width: MediaQuery.of(context).size.width * .8,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.hintColor, width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///trip image
            ImageWidget(
                url: "",
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .4,
                fit: BoxFit.cover,
                isAsset: false),

            ///trip name
            Column(
              children: [
                Text(
                  mdTrip.tripType ?? "Tripe Type Missing",
                  style: TextStyles.appBarTitle,
                ),
                Text(
                  mdTrip.serviceType?.name ?? "Service Type Missing",
                  style: TextStyles.fieldLabel,
                ),
                Text(
                  mdTrip.finishedAt?.toLocal().toString() ?? "End time Missing",
                  style: TextStyles.fieldLabel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
