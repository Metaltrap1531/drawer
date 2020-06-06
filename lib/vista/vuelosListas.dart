import 'package:flutter/material.dart';
import 'package:drawer_app/modelo/bitacora.dart';
import 'package:drawer_app/modelo/elementoLista.dart';


class TareaListas extends StatelessWidget {

  static String routeName = "/tareaListas";

  const TareaListas({Key key}): super(key: key);

  List<bitacora> contruirLista() {

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

    Map<int,bitacora> mapaTareas={
      0: tarea3,
      1: tarea1,
      2: tarea2,
      3: tarea3,
      4: tarea4,
      5: tarea5,
      6: tarea6,
      7: tarea7,
      8: tarea8,
      9: tarea9,
      10: tarea10,
      11: tarea11,
      12: tarea12,
      13: tarea13,
      14: tarea14,
      15: tarea15,
      16: tarea16,
      17: tarea17,
      18: tarea18,
      19: tarea19,
      20: tarea20,
    };
    //print(mapaVuelos[1].detalles);
    return List.generate(mapaTareas.length, (i) {
      //print('$i');
      return bitacora(

          fecha: mapaTareas[i].fecha,
          tarea: mapaTareas[i].tarea,
          detalles: mapaTareas[i].detalles
      );
    });
  }


  List<ListItem> bitacoraTareas(){

    return contruirLista()
        .map((bitacora)=> ListItem(registro: bitacora))
        .toList();

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: bitacoraTareas(),
    );


  }
}