import 'package:flutter/material.dart';

class Cotation extends StatefulWidget {
  @override
  State<Cotation> createState() => _CotationState();
}

class _CotationState extends State<Cotation> {
  @override
  TextEditingController txtNom=TextEditingController();
  TextEditingController txtclasse=TextEditingController();
  TextEditingController txtmath=TextEditingController();
  TextEditingController txtAnglais=TextEditingController();
  TextEditingController txtAlgorithme=TextEditingController();
  TextEditingController txtFrancais=TextEditingController();
  TextEditingController txtResultat=TextEditingController();
  TextEditingController txtMention=TextEditingController();
  TextEditingController txtMessage=TextEditingController();
  

 void calculer(){
    String nom = txtNom.text;
    String classe = txtclasse.text;
    double math = double.parse(txtmath.text);
    double anglais = double.parse(txtAnglais.text);
    double algorithme=double.parse(txtAlgorithme.text);
    double francais= double.parse(txtFrancais.text);
    String mention="";
    String message="";

    double result = ((math + anglais + algorithme + francais) / 200) * 100;

    if (result > 10 && result < 50){
      mention = " A";
    } else if (result >=50 && result <70){
      mention ="S";
    } else if (result >=70 && result < 80){
      mention = "D";
    }else if (result  >=80 && result <100){
      mention = "GD";
    } else {
      mention = "NAF";
    }
    setState(() {
     txtResultat.text ="$result";
     txtMention.text="" + mention + " "; 
    });
    txtMessage.text= " Bonjour "   + 
    txtNom.text + 
    " Votre avez obtenu "+ 
    txtResultat.text + 
    " en " + 
    txtclasse.text + 
    " et votre mention est " + 
    txtMention.text + 
    " ";
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        "Cotation",
        textAlign: TextAlign.center,
        ) ,
        backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Text("Nom :"),
                Container(
                  height: 50,
                  width: 300,
                  child: TextField(
                  controller: txtNom,
                  decoration: 
                  InputDecoration(labelText: "saisissez votre nom"),
                  )),
              ],
            ),
            Row(
              children: [
                Text("classe :"),
               Container(
                  height: 50,
                  width: 300,
                  child: TextField(
                  controller: txtclasse,
                  decoration: 
                  InputDecoration(labelText: "saisissez votre classe"),
                  )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Math /50"),
            Container(
              child: TextField(
                controller: txtmath,
                decoration: InputDecoration(labelText: ""),
                )),
                SizedBox(
                  height:10,
                ),
                Text(" Anglais/40"),
                Container(
              child: TextField(
                controller: txtAnglais,
                decoration: InputDecoration(labelText: ""),
                )),
                SizedBox(
                  height:10,
                ),
                Text(" Algorithme/50"),
                Container(
              child: TextField(
                controller: txtAlgorithme,
                decoration: InputDecoration(labelText: ""),
                )),
                SizedBox(
                  height:10,
                ),
                 Text(" Francais/60"),
                Container(
              child: TextField(
                controller: txtFrancais,
                decoration: InputDecoration(labelText: ""),
                )),
                SizedBox(
                  height:10,
                ),
                ElevatedButton(
                  onPressed: ((){
                    calculer();
                  }),
                  child: Text(
                    "Calculer",
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "" + txtMessage.text + " ",
                  style:TextStyle(color: Colors.black,fontSize:20),
                ),
               ],
               ),
            );
  }
}