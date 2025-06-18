import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required BannerAd bannerAd,
  }) : _bannerAd = bannerAd;

  final BannerAd _bannerAd;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: _bannerAd.size.width.toDouble(),
        height: _bannerAd.size.height.toDouble(),
        child: AdWidget(ad: _bannerAd),
      ),
    );
  }
}
