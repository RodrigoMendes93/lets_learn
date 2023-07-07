import 'package:flutter/material.dart';
import 'package:flutter_application_1/atividades/atv1.dart';
import 'package:flutter_application_1/atividades/atv10.dart';
import 'package:flutter_application_1/atividades/atv2.dart';
import 'package:flutter_application_1/atividades/atv3.dart';
import 'package:flutter_application_1/atividades/atv4.dart';
import 'package:flutter_application_1/atividades/atv5.dart';
import 'package:flutter_application_1/atividades/atv6.dart';
import 'package:flutter_application_1/atividades/atv7.dart';
import 'package:flutter_application_1/atividades/atv8.dart';
import 'package:flutter_application_1/atividades/atv9.dart';
import 'package:flutter_application_1/main.dart';

class RoutesGenerator {
  static const homePage = '/';
  static const atv1 = '/atividades/atv1';
  static const atv2 = '/atividades/atv2';
  static const atv3 = '/atividades/atv3';
  static const atv4 = '/atividades/atv4';
  static const atv5 = '/atividades/atv5';
  static const atv6 = '/atividades/atv6';
  static const atv7 = '/atividades/atv7';
  static const atv8 = '/atividades/atv8';
  static const atv9 = '/atividades/atv9';
  static const atv10 = '/atividades/atv10';

  RoutesGenerator._();

  static Route generate(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return _goPage(const LoginPage());
      case atv1:
        return _goPage(const AtvPage1());
      case atv2:
        return _goPage(const AtvPage2());
      case atv3:
        return _goPage(const AtvPage3());
      case atv4:
        return _goPage(const AtvPage4());
      case atv5:
        return _goPage(const AtvPage5());
      case atv6:
        return _goPage(const AtvPage6());
      case atv7:
        return _goPage(const AtvPage7());
      case atv8:
        return _goPage(const AtvPage8());
      case atv9:
        return _goPage(const AtvPage9());
      case atv10:
        return _goPage(const AtvPage10());
      default:
        throw const FormatException('');
    }
  }

  static _goPage(Widget page) => MaterialPageRoute(
        builder: (_) => page,
      );
}
