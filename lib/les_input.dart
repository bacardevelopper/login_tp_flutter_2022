// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new, non_constant_identifier_names
import 'package:flutter/material.dart';

class LesInputs extends StatefulWidget {
  @override
  State<LesInputs> createState() => _LesInputs();
}

class _LesInputs extends State<LesInputs> {
  @override
  void dispose() {
    // Nettoyez le contrôleur lorsque le widget est supprimé.
    monControleurUn.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width / 1.1,
      height: MediaQuery.of(context).size.height / 2.4,
      child: borderRadius_container(),
    );
  }

  // mes variables
  double bordure_radius_indice = 18.0;
  var monControleurUn = TextEditingController();
  var monControleurDeux = TextEditingController();

  // # les fonctions
  Widget borderRadius_container() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(bordure_radius_indice),
          bottomLeft: Radius.circular(bordure_radius_indice),
          bottomRight: Radius.circular(bordure_radius_indice),
          topLeft: Radius.circular(bordure_radius_indice),
        ),
      ),
      child: le_columnTextinput(),
    );
  }

  Widget le_columnTextinput() {
    return Column(
      children: [
        Container(height: 40),
        marge_input('username', 1),
        marge_input('mot de passe', 2),
        Container(height: 20),
        leBoutonDe_recup()
      ],
    );
  }

  Widget text_input(String labeltext, int indice) {
    if (indice == 1) {
      return TextField(
        controller: monControleurUn,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 8.0),
          ),
          hintText: labeltext,
        ),
      );
    } else {
      return TextField(
        controller: monControleurDeux,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 8.0),
          ),
          hintText: labeltext,
        ),
      );
    }
  }

  Widget marge_input(String labeltext, int indice) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width / 1.3,
      child: text_input(labeltext, indice),
    );
  }

  Widget leBoutonDe_recup() {
    return ElevatedButton(
      onPressed: () {
        print('| ---------------- |');
        print(monControleurUn.text);
        print(monControleurDeux.text);
      },
      child: Text("Recuperer"),
    );
  }
}
