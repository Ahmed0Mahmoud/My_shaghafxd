import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaghaf/constatnts.dart';
import 'package:shaghaf/core/utils/styles.dart';

void showSuccessDialog(BuildContext context) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.success,
    animType: AnimType.scale,
    headerAnimationLoop: false,
    title: 'Success',
    titleTextStyle: Styles.textStyle20,
    desc: 'You have successfully reset your password.',
    descTextStyle: Styles.textStyle16,
    btnOkOnPress: () {},
    btnOkText: 'Done',
    btnOkColor: KgreenColor,
    customHeader: Image.asset(
      'assets/Celebration-amico 1.png', // Replace with your asset
      height: 100,
      fit: BoxFit.contain,
    ),
  ).show();
}