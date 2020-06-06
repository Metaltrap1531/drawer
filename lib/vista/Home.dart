import 'package:flutter/material.dart';
import 'package:drawer_app/vista/vuelosListas.dart';

class Home extends StatelessWidget {

  static BuildContext contexto;

  const Home({Key key}): super(key: key);

  ListTile getListItem(Icon icono, String opcion,String route){
    return ListTile(
      leading: icono,
      title: Text(opcion),
      onTap: (){
        Navigator.pushNamed(contexto, route);
      },


    );

  }


  ListView getMenu(BuildContext context){

    return ListView(
      children: <Widget>[
        DrawerHeader(child:Text("Bienvendio")),
        getListItem(Icon(Icons.assignment),"Tareas Listas","/"),
        getListItem(Icon(Icons.assignment),"Tareas Sqlite","/TareasBD"),
        getListItem(Icon(Icons.assignment),"Tareas WebService","/TareasWeb"),

      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    contexto = context;

    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina principal"),
      ),
      drawer: Drawer(
        child: getMenu(context),
      ),
      body: TareaListas(),

    );
  }
}