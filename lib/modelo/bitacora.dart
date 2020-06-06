class bitacora{
  final String fecha;
  final String tarea;
  final String detalles;

  bitacora({this.fecha,this.tarea, this.detalles});


  /* Se crea el metodo toMap para transformar los datos de un formato de objeto
  a mapa. Este es necesario para introducir registros a la base de datos.
   */
  Map<String, dynamic> toMap() {
    return {
      'fecha': fecha,
      'tarea': tarea,
      'detalles': detalles,
    };
  }

  factory bitacora.fromJson(Map<String, dynamic> json) {
    return bitacora(
      fecha: json['fecha'],
      tarea: json['tarea'],
      detalles: json['detalles'],

    );
  }


}