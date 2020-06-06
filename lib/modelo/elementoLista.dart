import 'package:drawer_app/modelo/bitacora.dart';
import 'package:drawer_app/vista/vueloDetalles.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget{

  final bitacora registro;

  ListItem ({Key key, this.registro}): super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(registro.tarea.substring(0, 1)),),
        title: Text(registro.tarea),
        subtitle: Text("Fecha: " + registro.fecha.toString()),
        onTap: (){

          Navigator.push(context,
            MaterialPageRoute(builder: (context) => TareaDetalles(Actividad:registro)),);

        },
      ),
    );
  }
}