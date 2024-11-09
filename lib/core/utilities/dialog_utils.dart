import 'package:flutter/material.dart';

class DialogUtils {
  // Displays a confirmation dialog
  static Future<bool> showConfirmationDialog(BuildContext context, String title, String message) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text('Confirm'),
          ),
        ],
      ),
    );

    // Return the result or false if null
    return result ?? false;
  }

  // Displays an alert dialog with a message
  static Future<void> showAlertDialog(BuildContext context, String title, String message) async {
    return showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  // Displays a loading dialog (can be used while data is being processed)
  static Future<void> showLoadingDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(width: 15),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }

  // Dismisses the currently displayed dialog
  static void dismissDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}
