import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_trial/thanks_button.dart';

@widgetbook.UseCase(name: 'Default', type: ThanksButton)
Widget buildThanksButtonUseCase(BuildContext context) {
  final buttonLabel = context.knobs.string(
    label: 'Button Label',
    initialValue: 'Thank you!',
  );
  final responseText = context.knobs.string(
    label: 'Response Text',
    initialValue: 'You are welcome!',
  );
  final color = context.knobs.color(
    label: 'Color',
    initialValue: ThemeData().colorScheme.primary,
  );
  final textStyleOption = [
    _TextStyleOption(
      optionLabel: 'Large',
      textStyle: TextStyle(
        fontSize: 14,
      ),
    ),
    _TextStyleOption(
      optionLabel: 'Medium',
      textStyle: TextStyle(
        fontSize: 12,
      ),
    ),
    _TextStyleOption(
      optionLabel: 'Small',
      textStyle: TextStyle(
        fontSize: 11,
      ),
    ),
  ];
  final textStyle = context.knobs.list(
    label: 'TextStyle',
    initialOption: textStyleOption[0],
    labelBuilder: (option) => option.optionLabel,
    options: textStyleOption,
  );

  return ThanksButton(
    buttonLabel: buttonLabel,
    responseText: responseText,
    color: color,
    textStyle: textStyle.textStyle,
  );
}

class _TextStyleOption {
  const _TextStyleOption({
    required this.optionLabel,
    required this.textStyle,
  });

  final String optionLabel;
  final TextStyle textStyle;
}
