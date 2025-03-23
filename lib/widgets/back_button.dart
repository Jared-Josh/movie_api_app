import 'package:flutter/material.dart';
import 'package:flutter_movie_app/colors.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.only(top: 20, left: 20),
      decoration: BoxDecoration(
        color: Colours.scaffoldBgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_rounded),
      ),
    );
  }
}
