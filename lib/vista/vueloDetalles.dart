import 'package:flutter/material.dart';
import 'package:drawer_app/modelo/bitacora.dart';

class TareaDetalles extends StatelessWidget {
  final bitacora Actividad;

  TareaDetalles({this.Actividad});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Descripcón de Actividad"),
      ),
      body: Center(
          child: Column(

            children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(20.0),
                  //color: Colors.amber[600],
                  child: Text('Nombre de tarea: ' + Actividad.tarea)
              ),
              Container(
                  margin: const EdgeInsets.all(20.0),
                  //color: Colors.amber[600],
                  child: Text('Fecha de Actividad: ' + Actividad.fecha)
              ),
              Container(
                  margin: const EdgeInsets.all(20.0),
                  color: Colors.amber[600],
                  child: Text('Descripción de Actividad: ' + Actividad.detalles)
              ),
              RaisedButton(
                onPressed: () {
                  // Navigate back to first route when tapped.
                  Navigator.pop(context);
                },
                child: Text('Regreso'),
              ),
            ],

          )


      ),
    );
  }
}