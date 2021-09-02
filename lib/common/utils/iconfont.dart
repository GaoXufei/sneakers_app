import 'package:flutter/material.dart';

class IconFont {
  static const String _kFamily = 'iconfont';

  // Icon -> home
  static const IconData home = const IconData(
    0xe601,
    fontFamily: _kFamily,
    matchTextDirection: true,
  );

  // Icon -> chat
  static const IconData chat = const IconData(
    0xe72c,
    fontFamily: _kFamily,
    matchTextDirection: true,
  );

  // Icon -> search
  static const IconData search = const IconData(
    0xe612,
    fontFamily: _kFamily,
    matchTextDirection: true,
  );

  // Icon -> me
  static const IconData me = const IconData(
    0xe600,
    fontFamily: _kFamily,
    matchTextDirection: true,
  );

  // Icon -> setting
  static const IconData setting = const IconData(
    0xe61b,
    fontFamily: _kFamily,
    matchTextDirection: true,
  );

  // Icon -> Qr Code
  static const IconData qr_code = const IconData(
    0xe6be,
    fontFamily: _kFamily,
    matchTextDirection: true,
  );
}
