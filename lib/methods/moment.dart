class Moment {
  final String title;
  final String description;
  final String imagePath;
  final String videoPath;

  Moment(this.title, this.description, this.imagePath, this.videoPath);

  static final List<Moment> moments = [
    Moment("Velocidad en Acción", "Flash corriendo a toda velocidad",
        "./images/Flash_corriendo.webp", "videos/Barry_corre.mp4"),
    Moment("Encuentro con Zoom", "Flash enfrentándose a su némesis Zoom",
        "./images/flash_zoom.jpg", "videos/Flash_Zoom.mp4"),
    Moment(
        "Barry clava a Oliver unas flechas",
        "Barry y Oliver cambian de cuerpos y prueban las habilidades del otro",
        "./images/barry_oliver.jpg",
        "videos/Barry_Oliver.mp4")
  ];
}
