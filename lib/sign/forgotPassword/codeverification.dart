import 'package:flutter/material.dart';
import 'package:piolapp/template_sign.dart';
import 'package:piolapp/utils.dart';

class CodeVerification extends StatefulWidget
{
  const CodeVerification({super.key});

  @override
  State<StatefulWidget> createState() {
    return CodeVerificationState();
  }

}

class CodeVerificationState extends State<CodeVerification>
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