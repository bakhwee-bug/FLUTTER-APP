import 'package:flutter/material.dart';
import '/const/colors.dart';

class MyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondaryColor,
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              //Appbar
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                color: white,
                width: MediaQuery.of(context).size.width,
                height: 52,
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/images/sync_logo.png'),
              ),
              //songs
            ],
          ),
        ));
  }
}
