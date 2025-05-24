import 'package:flutter/material.dart';

import '../core/utils/numbers.dart';

void getScreenPartsSize(BuildContext context) {
  ConstantNumbers.screenWidth = MediaQuery.of(context).size.width;
  ConstantNumbers.screenHeight = MediaQuery.of(context).size.height;
  ConstantNumbers.statusBarHeight = MediaQuery.of(context).padding.top;
  ConstantNumbers.bottomScreenHeight = MediaQuery.of(context).padding.bottom;
  ConstantNumbers.appBarHeight = AppBar().preferredSize.height;
  makeOperationBodyHeight();
}

double makeOperationBodyHeight() =>
    ConstantNumbers.screenHeight -
    (ConstantNumbers.bottomScreenHeight +
        ConstantNumbers.statusBarHeight +
        ConstantNumbers.appBarHeight);
