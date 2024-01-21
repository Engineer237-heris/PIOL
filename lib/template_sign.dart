import 'package:flutter/material.dart';
import 'package:piolapp/utils.dart';
Widget leftOrCenterWidget(BuildContext context) {
  return Column(children: [
    Padding(
      padding: EdgeInsets.only(bottom: 20, top: 20),
      child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle),
              hintText:'Identifiant ou email',
              labelText:'Identifiant ou email')),
    ),
    Padding(
        padding: EdgeInsets.only(top: 20),
        child: TextField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Mot de passe',
                labelText: 'Mot de passe'))),

      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/recupMail');
                },
                child: const Text(
                  'Mot de passe oublié ?',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromRGBO(108, 140, 86, 1),
                      fontWeight: FontWeight.bold),
                ))),
      ),
    
    MaterialButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Text('Connectez-vous' ,
          style: TextStyle(color: Colors.white)),
      shape: const OutlineInputBorder(borderSide: BorderSide.none),
      color: const Color.fromRGBO(108, 140, 86, 1),
      height: 50,
      minWidth: double.infinity,
    ),
    const Divider(),
    SizedBox(
        width: double.infinity,
        height: 40,
        child: OutlinedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            style: OutlinedButton.styleFrom(
                side: const BorderSide(
                    color: Color.fromRGBO(108, 140, 86, 1), width: 2)),
            icon: const Icon(
              Icons.alternate_email,
              color: Color.fromRGBO(108, 140, 86, 1),
            ),
            label: Text('Connectez-vous avec Gmail',
              style: TextStyle(color: Color.fromRGBO(108, 140, 86, 1)),
            ))),
    Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Si vous n'avez pas de compte,"),
        TextButton(
            onPressed: () {Navigator.of(context).pushNamed('/signUp');
            },
            child: Text('inscrivez-vous',
                style: TextStyle(
                    color: Color.fromRGBO(108, 140, 86, 1),
                    fontWeight: FontWeight.bold)))
      ]),
    )
  ]);
}

Widget wgtNoAndroid(BuildContext context) {
  return Row(
    children: [
      Expanded(
          child: Image.asset('assets/images/noAndroidII.jpg', fit: BoxFit.cover)
      ),
      Padding(
          padding: const EdgeInsets.all(30),
          child:
          Container(
            width: MediaQuery.of(context).size.width / 3,
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: const Offset(0, 15))
                ]),
            child: wgtAndroid(context),
          ))
    ],
  );
}

Widget wgtAndroid(BuildContext context) {
  return Column(
    children: [
      Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset('assets/images/logo-brown.png',
              width: (isAndroid || isIOS)
                  ? MediaQuery.of(context).size.width / 3
                  : MediaQuery.of(context).size.height / 8,
              height: (isAndroid || isIOS)
                  ? MediaQuery.of(context).size.height / 5
                  : MediaQuery.of(context).size.height / 8))
    ],
  );
}

Widget wgtGetEmailOrPhoneOrIdentifiant(BuildContext context) {
  return Column(children: [
    Padding(
      padding: EdgeInsets.only(bottom: 5, top: 20),
      child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_rounded),
              hintText: 'Votre email ou identifiant',
              labelText: 'Votre email ou identifiant')),
    ),
    Align(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: () {},
            child: const Text(
              'Essayez d\' autre méthode de récupération ?',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color.fromRGBO(108, 140, 86, 1),
                  fontWeight: FontWeight.bold),
            ))),
    Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, '/codeVerification');
          },
          icon: Icon(Icons.arrow_right_rounded),
          label: Text('Suivant')),
    )
  ]);
}

Widget wgtGetCodeVerification(BuildContext context,
    {bool isOtherMethod = false}) {
  return Column(children: [
    Padding(
      padding: EdgeInsets.only(bottom: 20, top: 20),
      child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_rounded),
              hintText: (isOtherMethod)
                  ? 'Votre numéro de téléphone'
                  : 'Votre email ou identifiant',
              labelText: (isOtherMethod)
                  ? 'Votre numéro de téléphone'
                  : 'Votre email ou identifiant')),
    ),
    Align(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: () {},
            child: const Text(
              'Essayez d\' autre méthode de récupération ?',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color.fromRGBO(108, 140, 86, 1),
                  fontWeight: FontWeight.bold),
            ))),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/recupMail');
            },
            child: Text('Précédent')),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, '/newPassword');
        }, 
        child: Text("Valider"))
        
      ],
    )
  ]);
}

Widget wgtGetNewPassword(BuildContext context) {
  return Column(children: [
    Padding(
      padding: EdgeInsets.only(bottom: 20, top: 20),
      child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.password_rounded),
              hintText: 'Nouveau mot de passe',
              labelText: 'Nouveau mot de passe')),
    ),
    Padding(
      padding: EdgeInsets.only(bottom: 20, top: 20),
      child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.password_rounded),
              hintText: 'Confirmation de votre mot de passe',
              labelText: 'Confirmation de votre mot de passe')),
    ),
    MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, 'signIn');
      },
      child: Text('Réinitialisation', style: TextStyle(color: Colors.white)),
      shape: const OutlineInputBorder(borderSide: BorderSide.none),
      color: const Color.fromRGBO(108, 140, 86, 1),
      height: 50,
      minWidth: double.infinity,
    ),
  ]);
}
