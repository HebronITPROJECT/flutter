import 'package:flutter/material.dart';
import 'package:virtual_app/utils/screen_aware_size.dart';

Container signInButtonPrew(BuildContext context, color, textColor, page,) {
  return Container(
    margin: EdgeInsets.only(top: screenAwareSize(30, context)),
    child: Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        width: screenAwareSize(180, context),
        height: screenAwareSize(100, context),
        child: RaisedButton(
          color: color,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(90),
              bottomRight: Radius.circular(90),
            ),
          ),
          child: Text(
            "SIGN IN",
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ),
  );
}
