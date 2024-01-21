import 'package:flutter/material.dart';
import 'package:piolapp/template_sign.dart';
import 'package:piolapp/utils.dart';

class NewPassword extends StatefulWidget
{
  const NewPassword({super.key});

  @override
  State<StatefulWidget> createState() {
    return NewPasswordState();
  }

}

class NewPasswordState extends State<NewPassword>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:(isAndroid || isIOS) ?Colors.white:const Color.fromRGBO(167, 201, 213, 1),
        body: SafeArea(
          minimum: const EdgeInsets.all(10),
          child:(isAndroid || isIOS) 
          ?wgtAndroid(context)
          :wgtNoAndroid(context),
        ));
  }

}