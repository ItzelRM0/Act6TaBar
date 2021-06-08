import 'package:flutter/material.dart';

void main() => runApp(itzelApp());

class itzelApp extends StatefulWidget {
  @override
  _itzelAppState createState() => _itzelAppState();
}

class _itzelAppState extends State<itzelApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(brightness: Brightness.dark), debugShowCheckedModeBanner: false, home: Principal());
  }
}

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} // Fin clase Principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //Fin void InitState

  Widget card(String text) {
    return Card(
      color: Colors.pink,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //Fin de widget card

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //Fin de Tab enviando texto con icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agencia de autos itzel"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card(" 1 Inicio"),
          card(" 2 Comienza a buscar tus productos"),
          card(" 3 No tienes articulos en tu Carrito"),
          card(" 4 Ajustes"),
          card(" 5 Cuenta"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Inicio", Icon(Icons.account_balance_sharp)),
          tab("Buscador", Icon(Icons.business_center_rounded)),
          tab("Carrito", Icon(Icons.add_shopping_cart_rounded)),
          tab("Ajustes", Icon(Icons.build_circle)),
          tab("Cuenta", Icon(Icons.account_box)),
        ],
      ),
    ); //Fin de Scaffold
  } //Fin de widget
} //Fin class _PrincipalState