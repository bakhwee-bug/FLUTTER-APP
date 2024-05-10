import 'package:flutter/material.dart';
import 'package:flutter_application_sync/components/sync_bar.dart';
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
              Syncbar(barImage: 'assets/images/sync_logo.png'),
              //songs
              Expanded(
                  child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(),
              ))
            ],
          ),
        ));
  }
}
