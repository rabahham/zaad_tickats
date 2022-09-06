// singout

import 'package:buy_tickets/screens/login/zaad_tickts_login_screen.dart';
import 'package:buy_tickets/shered/components/components.dart';
import 'package:buy_tickets/shered/network/local/chach_hlepr.dart';
import 'package:flutter/cupertino.dart';

void sigOut(context) {
  CacheHelper.removeData(key: 'token').then((value) {
    if (value) {
      navigatToRomplace(context, ZaadTicktsLoginScreen());
    }
  });
}

// for look all print
void printFllTextss(String text) {
  final pattern = RegExp('.{1.800');
  pattern.allMatches(text).forEach((element) => element.group(0));
}

String token = 'hi';
