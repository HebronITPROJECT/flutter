import 'package:flutter/material.dart';


 Container signUpButton(BuildContext context,page) {
    return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 200,
                      height: 110,
                      child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {
                          // if (!_emailKey.currentState.validate()) {
                          //   print("object");
                          // } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => page));
                          // }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(90),
                            bottomLeft: Radius.circular(90),
                          ),
                        ),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
  }