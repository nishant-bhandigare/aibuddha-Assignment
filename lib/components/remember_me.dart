import 'package:flutter/material.dart';

class RememberMeWidget extends StatefulWidget {
  @override
  _RememberMeWidgetState createState() => _RememberMeWidgetState();
}

class _RememberMeWidgetState extends State<RememberMeWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {

    Color themeColour = const Color.fromARGB(255, 34, 50, 99);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Checkbox(
            value: _isChecked,
            onChanged: (bool? newValue) {
              setState(() {
                _isChecked = newValue ?? false;
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            activeColor: themeColour,
          ),
          Text(
            "Remember Me",
            style: TextStyle(color: Colors.grey[500], fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
