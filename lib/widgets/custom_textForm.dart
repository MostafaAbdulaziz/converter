import 'package:converter/core/utils/colors.dart';
import 'package:flutter/material.dart';

TextEditingController textFormController = TextEditingController();

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key});
  @override
  Widget build(BuildContext context) => TextFormField(
    controller: textFormController,
    maxLines: 5,
    style: Theme.of(context).textTheme.labelMedium,
    cursorColor: AppColors.whiteColor,
  );
}
