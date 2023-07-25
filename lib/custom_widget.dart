
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_shimmer.dart';

Widget buildListTileShimmer() => ListTile(
      leading: const CustomShimmer.circular(
          baseColor: Colors.blue, height: 64, width: 64),
      title: Align(
        alignment: Alignment.centerLeft,
        child: CustomShimmer.rectangular(
          baseColor: Colors.blue,
          height: 16,
          width: Get.width * 0.3,
        ),
      ),
      subtitle: CustomShimmer.rectangular(
          baseColor: Colors.blue, height: 14, width: Get.width * 0.3),
    );

Widget buildShimmerFromLottie() =>  CustomShimmer.fromLottieAsset(
      durationInSec: 4,
      height: Get.height,
      width: Get.width,
      lottieAssets: 'assets/shimmer_lottie/yellow_shimmer.json',
    );
