import 'package:flutter/material.dart';

Future<void> customDialog(BuildContext context, String titleText,
    String bodytext, List<Widget> actions) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
          title: Text(titleText),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(bodytext),
              ],
            ),
          ),
          actions: actions);
    },
  );
}
