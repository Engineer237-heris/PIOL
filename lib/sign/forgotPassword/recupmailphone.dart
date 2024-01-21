import 'package:flutter/material.dart';
import 'package:piolapp/template_sign.dart';
import 'package:piolapp/utils.dart';

class RecupMailPhone extends StatefulWidget {
  const RecupMailPhone({super.key});

  @override
  State<StatefulWidget> createState() {
    return RecupMailPhoneState();
  }
}

class RecupMailPhoneState extends State<RecupMailPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: (isAndroid || isIOS)
            ? Colors.white
            : const Color.fromRGBO(167, 201, 213, 1),
        body: SafeArea(
          minimum: const EdgeInsets.all(10),
          child:Center(
            child:(isAndroid || isIOS)
              ? wgtAndroid(context)
              : wgtNoAndroid(context) ,
          )
           
        ));
  }
}
