import 'package:flutter/material.dart';
import 'package:smart_gpt/core/constants/ui_colors.dart';
import 'package:smart_gpt/core/services/helpers/log_helper.dart';
import 'package:smart_gpt/core/widgets/ctext_button.dart';

/// A top level function that can be used to show an alert dialog
/// It also provides a default title as `Message` and `Close` as action
/// that dismiss the dialog.

/// boolean to show only one dialog at a time
bool _dialogOpen = false;

Future<T?> cAlertDialog<T>({
  required BuildContext context,
  required Widget content,
  Widget? title,
  List<Widget>? actions,
  MainAxisAlignment actionsAlignment = MainAxisAlignment.center,
}) {
  if (_dialogOpen) {
    printLog('Prevented opening multiple dialogs!');
    return Future.value();
  }
  _dialogOpen = true;
  return showDialog<T>(
    context: context,
    builder: (context) {
      return AlertDialog.adaptive(
        actionsAlignment: actionsAlignment,
        backgroundColor: UIColors.backgroundPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: title ??
            const Text(
              'Error',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
        content: content,
        actions: actions ??
            [
              CTextButton(
                text: 'Colose',
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
      );
    },
  ).then((value) {
    _dialogOpen = false;
    return null;
  });
}
