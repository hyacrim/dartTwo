import 'dart:io';

List<String> nomComplet = [];

void nomApp() {
  print("Le nom de votre programme :");
  String? app = stdin.readLineSync();

  if (app != null && app.isNotEmpty) {
    print('\n Bienvenue au $app !!!');
    print('Appuyer sur la touche Entrer pour continuer ! ');
    String? continuer = stdin.readLineSync();
    if (continuer != null && continuer.isEmpty) {
      option();
    }
  } else {
    print('\n Veuillez saisir un nom de programme valide !');
  }
}

void allname() {
  // ignore: unnecessary_null_comparison
  if (nomComplet == null) {
    print('\n Aucun nom enregistré :');
  } else {
    print('\n Noms enregistrés :');

    for (int i = 0; i < nomComplet.length; i++) {
      print('${i + 1}. ${nomComplet[i]}');
    }
  }
}

void option() {
  print('\n');
  print('******** CHOSIR UNE OPTION ******');
  print('1 => Ajouter un nom ');
  print('2 => Voir les noms enregistrer ');
  print('3 => Supprimer un nom enregistrer ');
  print('4 => Modifier un nom enregistrer ');
  print('a => Quitter ');
}

String choix() {
  String? choixString = stdin.readLineSync();
  return choixString!;
}

void addName() {
  print('\n****** ENTRER LE NOM *****');
  String? nom = stdin.readLineSync();
  print('\n****** ENTRER LE PRENOM ****');
  String? prenom = stdin.readLineSync();
  if (nom != null && prenom != null) {
    var nc = '$nom $prenom';
    nomComplet.add(nc);
  } else {
    print('\n***REESAYER***\n');
  }
}

void deleteName() {
  print('\n Choisir l\'ID du nom à supprimer: ');
  int? id = int.tryParse(stdin.readLineSync()!);
  if (id != null && id > 0 && id <= nomComplet.length) {
    nomComplet.removeAt(id - 1);
    print('\n Nom supprimé avec succès !!!');
  } else {
    print('\n L\'ID n\'existe pas !!!');
  }
}

void setName() {
  print('\n Choisir l\'ID du nom à supprimer: ');
  int? id = int.tryParse(stdin.readLineSync()!);
  if (id != null && id > 0 && id <= nomComplet.length) {
    print('\n Entrer le nouveau Nom:');
    String? nNom = stdin.readLineSync();
    print('\n Entrer le nouveau Prénom:');
    String? nprenom = stdin.readLineSync();
    if (nNom != null && nprenom != null) {
      var nNomComplet = '$nNom $nprenom';
      nomComplet[id - 1] = nNomComplet;
      print('\n Nom modifier avec succès !!!');
    } else {
      print('\n Vérifier le texte entrer !!!');
    }
  } else {
    print('\n L\'ID n\'existe pas !!!');
  }
}

void left() {
  print('\nVoulez-vous vraiment quitter ?\n');
  print('''- Si "oui", appuyez sur la touche Entrée
- Si "non", saisissez "n" ''');
  String? rep = stdin.readLineSync().toString();

  if (rep.isEmpty) {
    print('\nAU REVOIR !!!');
    exit(0);
  } else {
    return option();
  }
}
