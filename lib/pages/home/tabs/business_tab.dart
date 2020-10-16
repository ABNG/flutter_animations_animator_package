import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/dialogs/random_dialog.dart';

class BusinessTab extends StatelessWidget {
  const BusinessTab({
    Key key,
    @required this.textStyle,
  }) : super(key: key);

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("Display Dialog"),
            onPressed: () {
              showModal(
                configuration: FadeScaleTransitionConfiguration(
                    // transitionDuration: Duration(seconds: 1),
                    ),
                context: context,
                builder: (context) {
                  return RandomDialog();
                },
              );
            },
          ),
          Text(
            'Index 1: Business',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
