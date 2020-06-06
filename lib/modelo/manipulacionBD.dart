import 'package:drawer_app/modelo/bitacora.dart';
import 'package:drawer_app/modelo/definicionBD.dart';
import 'package:sqflite/sqflite.dart';


//Esta clase toma la conexión creada en la clase de DefinicionBD para insertar y recuperar datos
class ManipulacionBD {

  final dbProvider = actividadesCasaBD.dbProvider;

  void cargarDatos() async {
    //Esta sección debe ser sustituida por un formulario. Practiquen creando uno propio con ayuda de los tutoriales de Flutter, checa
    // https://flutter.dev/docs/cookbook/forms/validation
    var tarea1 = bitacora(fecha: '11/02/2019',tarea: 'Lavar la ropa',detalles: 'hace falta playeras');
    var tarea2 = bitacora(fecha: '12/02/2019',tarea: 'Recoger cuarto',detalles: 'antes de que llegue visita');
    var tarea3 = bitacora(fecha: '13/02/2019',tarea: 'Sacar La basura',detalles: 'por que se esta acumulando');
    var tarea4 = bitacora(fecha: '14/02/2019',tarea: 'Comprar despensa',detalles: 'ya casi no queda aceite');
    var tarea5 = bitacora(fecha: '15/02/2019',tarea: 'Bañar los perros',detalles: 'ya le hace falta una bañadita a tu can');
    var tarea6 = bitacora(fecha: '16/02/2019',tarea: 'Lavar los trastes',detalles: 'Una pila de trastes te espera');
    var tarea7 = bitacora(fecha: '17/02/2019',tarea: 'Avanzar proyecto',detalles: 'si no repruebas');
    var tarea8 = bitacora(fecha: '17/02/2019',tarea: 'Comprar candado para casa',detalles: 'el antiguo se rompio');
    var tarea9 = bitacora(fecha: '17/02/2019',tarea: 'comprar mas shampoo',detalles: 'para bañarte si no con que?');
    var tarea10 = bitacora(fecha: '17/02/2019',tarea: 'comprar papel de baño',detalles: 'Necesario!!');
    var tarea11 = bitacora(fecha: '17/02/2019',tarea: 'arreglar tuberias',detalles: 'hay fuga de agua');
    var tarea12= bitacora(fecha: '17/02/2019',tarea: 'vender el carro rojo',detalles: 'el dinero es para la casa');
    var tarea13= bitacora(fecha: '17/02/2019',tarea: 'viajar al espacio XD',detalles: 'al joven no se le ocurrio nada XD');
    var tarea14= bitacora(fecha: '17/02/2019',tarea: 'Terminar las tareas de universidad',detalles: 'o repruebas');
    var tarea15= bitacora(fecha: '17/02/2019',tarea: 'comprar comida para perro',detalles: 'ya casi se acaba el costal');
    var tarea16= bitacora(fecha: '17/02/2019',tarea: 'matar los ratones con veneno',detalles: 'se comen toda la despesan que no va en el refri');
    var tarea17= bitacora(fecha: '17/02/2019',tarea: 'limpiar la casa',detalles: 'hoy vienen visitas');
    var tarea18= bitacora(fecha: '17/02/2019',tarea: 'lavar el baño',detalles: 'se acumula el sarro');
    var tarea19= bitacora(fecha: '17/02/2019',tarea: 'podar el pasto',detalles: 'es un monte aya afuer');
    var tarea20= bitacora(fecha: '17/02/2019',tarea: 'arreglar el otro carro',detalles: 'le falla el motor y cambiar balatas');
    //Inserta registros a la tabla
    await inserttarea(tarea1);
    await inserttarea(tarea2);
    await inserttarea(tarea3);
    await inserttarea(tarea4);
    await inserttarea(tarea5);
    await inserttarea(tarea6);
    await inserttarea(tarea7);
    await inserttarea(tarea8);
    await inserttarea(tarea9);
    await inserttarea(tarea10);
    await inserttarea(tarea11);
    await inserttarea(tarea12);
    await inserttarea(tarea13);
    await inserttarea(tarea14);
    await inserttarea(tarea15);
    await inserttarea(tarea16);
    await inserttarea(tarea17);
    await inserttarea(tarea18);
    await inserttarea(tarea19);
    await inserttarea(tarea20);
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  }

  Future<void> inserttarea(bitacora tare) async {
    final db = await dbProvider.database;
    // Inserta un vueo en la tabla correspondiente. También prevee
    // la repetición de registros `conflictAlgorithm`, reemplazandolos
    await db.insert(
      'vuelos',
      tare.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<bitacora>> getTareas() async {
    final db = await dbProvider.database;
    // Se recuperan todos los registros de la tabla.
    final List<Map<String, dynamic>> maps = await db.query('tareas');

    // Convierte  List<Map<String, dynamic>  a List<Dog>.
    return List.generate(maps.length, (i) {
      return bitacora(
        fecha: maps[i]['fecha'],
        tarea: maps[i]['tarea'],
        detalles: maps[i]['detalles'],
      );
    });
  }




}