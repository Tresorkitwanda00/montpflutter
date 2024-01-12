class Etudiant {
  int id = 0;
  String nom = "";
  String postnom = "";
  String prenom = "";
  String sexe = "";
  int age = 0;
  String dateNaissance = "";
  int poids = 0;
  int taille = 0;

  //Les mutateurs
  void SetId(int id) {
    this.id = id;
  }

  void SetNom(String nom) {
    this.nom = nom;
  }

  void SetPostnom(String postnom) {
    this.postnom = postnom;
  }

  void SetPrenom(String prenom) {
    this.prenom = prenom;
  }

  void SetSexe(String sexe) {
    this.sexe = sexe;
  }

  void SetAge(int age) {
    this.age = age;
  }

  void SetDate(String dateNaissance) {
    this.dateNaissance = dateNaissance;
  }

  void SetPoids(int poids) {
    this.poids = poids;
  }

  void SetTaille(int taille) {
    this.taille = taille;
  }

  //Les acceesseurs

  int GetId() {
    return this.id;
  }

  String GetNom() {
    return this.nom;
  }

  String GetPostNom() {
    return this.postnom;
  }

  String GetPreNom() {
    return this.prenom;
  }

  String GetSexe() {
    return this.sexe;
  }

  int GetAge() {
    return this.age;
  }

  String GetDate() {
    return this.dateNaissance;
  }

  int GetPoids() {
    return this.poids;
  }

  int GetTaille() {
    return this.taille;
  }
}
