import 'package:flutter/material.dart';
import '/const/colors.dart';

class Syncbar extends StatelessWidget {
  final String barImage;
  const Syncbar({super.key, required this.barImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
      color: white,
      width: MediaQuery.of(context).size.width,
      height: 52,
      alignment: Alignment.centerLeft,
      child: Image.asset(barImage),
    );
  }
}
