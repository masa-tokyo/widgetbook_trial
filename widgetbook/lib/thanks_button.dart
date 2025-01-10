import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_trial/thanks_button.dart';

@widgetbook.UseCase(name: 'Default', type: ThanksButton)
Widget buildThanksButtonUseCase(BuildContext context) {
  return ThanksButton();
}
