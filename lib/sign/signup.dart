import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:piolapp/utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: (isAndroid || isIOS)
            ? Colors.white
            : const Color.fromRGBO(167, 201, 213, 1),
        body: SafeArea(
          minimum: const EdgeInsets.all(10),
          child: (isAndroid || isIOS) ? wgtAndroid : wgtNoAndroid,
        ));
  }

  Widget get wgtAndroid {
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
                    : MediaQuery.of(context).size.height / 8)),
        leftOrCenterWidget
      ],
    );
  }

  Widget get wgtNoAndroid {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          padding: const EdgeInsets.all(40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade600,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: const Offset(0, 15))
              ]),
          child: wgtAndroid,
        ));
  }

  Widget get stepI {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: TextField(
              keyboardType:TextInputType.name ,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Nom',
                  labelText: 'Nom')),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
              keyboardType:TextInputType.text ,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Prenom',
                  labelText: 'Prenom')),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Suivant',
                style: TextStyle(color: Colors.white),
              )),
        )
      ],
    );
  }


  Widget get stepII {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Email',
                  labelText: 'Email')),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: IntlPhoneField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
                  hintText: 'Numéro de téléphone',
                  labelText: 'Numéro de téléphone'
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Précédent',
                style: TextStyle(color: Colors.white),
              )),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Envoyer',
                style: TextStyle(color: Colors.white),
              )),
          ],
        )
      ],
    );
  }

  Widget get stepIII {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Nom',
                  labelText: 'Nom')),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Prenom',
                  labelText: 'Prenom')),
        ),
        Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Précédent',
                style: TextStyle(color: Colors.white),
              )),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Suivant',
                style: TextStyle(color: Colors.white),
              )),
          ],
        )
      ],
    );
  }


  Widget get stepIV {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Nom',
                  labelText: 'Nom')),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Prenom',
                  labelText: 'Prenom')),
        ),
        Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Précédent',
                style: TextStyle(color: Colors.white),
              )),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Suivant',
                style: TextStyle(color: Colors.white),
              )),
          ],
        )
      ],
    );
  }

  Widget get leftOrCenterWidget {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(bottom: 20, top: 20),
        child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                hintText: 'Identifiant ou email',
                labelText: 'Identifiant ou email')),
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
        child: Text('Connectez-vous', style: TextStyle(color: Colors.white)),
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
              label: Text(
                'Connectez-vous avec Gmail',
                style: TextStyle(color: Color.fromRGBO(108, 140, 86, 1)),
              ))),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Si vous n'avez pas de compte,"),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/signUp');
              },
              child: Text('inscrivez-vous',
                  style: TextStyle(
                      color: Color.fromRGBO(108, 140, 86, 1),
                      fontWeight: FontWeight.bold)))
        ]),
      )
    ]);
  }
}
