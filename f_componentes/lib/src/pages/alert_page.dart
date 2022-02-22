import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Mostar Alerta'),
        onPressed: () => _mostrarAlert(context),
        style: ElevatedButton.styleFrom(
            primary: Colors.redAccent, shape: StadiumBorder()),
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_location),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25.0) ),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contido de la caja de la alerta ~ MariaCan'),
                FlutterLogo(size: 100.0)
              ]
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        }
    );
  }
}
