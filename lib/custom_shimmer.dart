import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  final Color baseColor;
  final String lottieAssets;
  final int durationInSec;

  const CustomShimmer.rectangular({
    super.key,
    this.lottieAssets = "",
    this.width = double.infinity,
    required this.height,
    this.durationInSec = 2,
    this.baseColor = Colors.blueGrey,
  }) : shapeBorder = const RoundedRectangleBorder();

  const CustomShimmer.circular({
    super.key,
    this.lottieAssets = "",
    this.width = double.infinity,
    required this.height,
    this.durationInSec = 2,
    this.baseColor = Colors.grey,
  }) : shapeBorder = const CircleBorder();

  const CustomShimmer.fromLottieAsset({
    super.key,
    this.lottieAssets = "",
    this.width = double.infinity,
    required this.height,
    this.durationInSec = 2,
    this.shapeBorder = const CircleBorder(),
    this.baseColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: Colors.grey[300]!,
      period: Duration(seconds: durationInSec),
      child: lottieAssets != ""
          ? Lottie.asset(lottieAssets,
              width: width, height: height, fit: BoxFit.fill)
          : Container(
              width: width,
              height: height,
              decoration: ShapeDecoration(
                color: Colors.grey[400]!,
                shape: shapeBorder,
              ),
            ));
}
