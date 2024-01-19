import 'package:essaie/Calculatrice.dart';
import 'package:essaie/Cotation.dart';
import 'package:essaie/Etudiant.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'Calculatrices.dart';
void main() {
  runApp(MaterialApp(
    home: Calc(),
    ));
}
//   // appel du 1er fonction
//   String etatPers=personne(20, "M");
//   print(etatPers);
//   //appel 2eme fonction 
//   //String afficheb= afficher(3);
//   print ( afficher(3));
//   // appel 3em fonction
//   List<double> eqt= equation(1, -3, 2);
//   print (eqt);
//   //appel 4em fonction
//   print(moyenne(2, 4, 10, 3, 1));
//   //appel 5em fonction
//   print (factoriel(10));
//    // appelle de la classe Etudiant(creation objet)
//    Etudiant etu=new Etudiant();
//   etu.SetId(1);
//   etu.SetNom("Niyonzima");
//   etu.SetPostnom("Mbonimpa");
//   etu.SetPrenom("Lydie");
//   etu.SetSexe("F");
//   etu.SetAge(21);
//   etu.SetDate("25/avril/2002");
//   etu.SetPoids(60);
//   etu.SetTaille(1);

  

//   print(etu.GetId());
//   print(etu.GetNom());
//   print(etu.GetPostNom());
//   print(etu.GetPreNom());
//   print(etu.GetSexe());
//   print(etu.GetAge());
//   print(etu.GetDate());
//   print(etu.GetPoids());
//   print(etu.GetTaille());

// }
// String personne(int age ,String genre){
//   String resultat="";
//    if (genre =="M" && age >=18 && age < 100){
//     resultat ="tu es un majeure !";
//    }else if (genre =="F" && age >=18 && age <100){
//      resultat =" tu es une majeure!";
//    }else if (genre =="M" && age < 18 && age > 0){
//      resultat =" tu es un mineur!";
//    }else if (genre=="F" && age < 18 && age >0){
//      resultat="tu es une mineur!";  
//    } else{
//      resultat ="verifier les infos entrer";
//    }
//    return resultat;
// }
//  // fonction qui affiche bonjour
//  String afficher(int nombre){
//    String message ="";
//    for (int i=0 ; i< nombre;i++){
//      message +="bonjour le monde\n";
//    }
//    return message;
//  }
//  // fonction d'equation du second degre
//  List<double> equation(double a ,double b,double c){
//    double delta = ((b*b) - (4 * a * c));
//    if (delta > 0){
//      double x1 =((-b + sqrt(delta)) / (2 * a));
//      double x2 =((-b - sqrt(delta)) / (2 * a));
//      return [delta,x1,x2];
//  }else if(delta == 0){
//   double x =((-b) / (2 * a));
//   return [delta,x];
//  }else {  
//    return [delta];
//  }
//  }
//  //fonction quirenvoie la moyenne
//  double moyenne (double a ,double b,double c,double d,double e){
//    double resultat =(a + b + d +e) /5;
//    return resultat;
//  }
//  // factoriel d'un nombre
//  double factoriel(double nombre){
//    if (nombre == 0 || nombre ==1){
//      return 1;
//    } else if (nombre > 1){
//      double factoriel=1;
//      for (int i = 2; i<= nombre; i++){
//             factoriel *=i;
//      }
//      return factoriel;
//    }else{
//      return 0;
//    }
 