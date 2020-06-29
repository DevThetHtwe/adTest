import 'package:firebase_admob/firebase_admob.dart';

MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['flutterio', 'beautiful apps'],
  contentUrl: 'https://flutter.io',
  childDirected: false,
  testDevices: <String>[],
);

BannerAd myBanner = BannerAd(
  adUnitId: BannerAd.testAdUnitId,
  size: AdSize.smartBanner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);

InterstitialAd myInterstitial = InterstitialAd(
  adUnitId: InterstitialAd.testAdUnitId,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("InterstitialAd event is $event");
  },
);

showbanner() {
  myBanner
    ..load()
    ..show(
      anchorOffset: 0.0,
      horizontalCenterOffset: 0.0,
      anchorType: AnchorType.bottom,
    );
}

showinter() {
  myInterstitial
    ..load()
    ..show(
      anchorType: AnchorType.bottom,
      anchorOffset: 0.0,
      horizontalCenterOffset: 0.0,
    );
}

void hidebanner() async {
  try {
    await myBanner?.dispose();
  } catch (e) {
    print(e);
  }
}
