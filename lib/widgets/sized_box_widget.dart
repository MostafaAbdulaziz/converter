import 'package:flutter/material.dart';

import '../core/utils/numbers.dart';

class SizedBoxHeightWidget extends StatelessWidget {
  final double ratioNumber;
  const SizedBoxHeightWidget({super.key, required this.ratioNumber});

  @override
  Widget build(BuildContext context) =>
      SizedBox(height: ConstantNumbers.bodyHeight / ratioNumber);
}
