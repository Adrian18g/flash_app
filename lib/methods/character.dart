class Character {
  final String actorName;
  final String characterName;
  final String description;
  final String imagePath;

  Character(
      this.actorName, this.characterName, this.description, this.imagePath);

  static final List<Character> characters = [
    Character(
        "Grant Gustin",
        "Barry Allen",
        "Thomas Grant Gustin (Norfolk, Virginia, 14 de enero de 1990), conocido simplemente como Grant Gustin, es un actor y cantante estadounidense, mayormente reconocido por interpretar a Sebastian Smythe en la serie Glee y a Barry Allen en The Flash.",
        "images/Grant_gustin.webp"),
    Character(
        "Candice Patton",
        "Iris West",
        "Candice Patton (Jackson, Misisipi, 24 de junio de 1988) es una actriz estadounidense conocida por su papel de Tori en la serie de televisión de comedia dramática The Game y por el papel de Iris West en la serie de TV The Flash.",
        "images/iris.jpg"),
    Character(
        "Carlos Valdes",
        "Cisco Ramon",
        "Carlos Valdés (Cali, 20 de abril de 1989) es un actor, músico, cantante y compositor colombiano, conocido por interpretar el papel de Cisco Ramón/Vibe en la serie de televisión The Flash y otros programas relacionados con Arrowverso.",
        "images/Cisco.jpg"),
    Character(
        "Danielle Panabaker",
        "Caitlin Snow",
        "Danielle Nicole Panabaker (Augusta, Georgia, 19 de septiembre de 1987) es una actriz de cine y televisión estadounidense.",
        "images/Caitlin.jpg"),
  ];
}
