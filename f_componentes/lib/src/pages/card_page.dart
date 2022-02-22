import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(), SizedBox(height: 30.0),
          _cardTipo2(), SizedBox(height: 30.0),
          _cardTipo1(), SizedBox(height: 30.0),
          _cardTipo2(), SizedBox(height: 30.0),
          _cardTipo1(), SizedBox(height: 30.0),
          _cardTipo2(), SizedBox(height: 30.0),
          _cardTipo1(), SizedBox(height: 30.0),
          _cardTipo2(), SizedBox(height: 30.0),
          _cardTipo1(), SizedBox(height: 30.0),
          _cardTipo2(), SizedBox(height: 30.0),
         ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.green,
            ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Esta es la descripción de la targeta hecha por Maria Can'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container( 
        child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://i.pinimg.com/originals/71/b2/fd/71b2fdf7de2e1bd66d4ac2eb2e7daa8a.jpg'),
          placeholder: AssetImage('assets/17.1 jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        /*Image(
          image: NetworkImage('https://i.pinimg.com/originals/71/b2/fd/71b2fdf7de2e1bd66d4ac2eb2e7daa8a.jpg'),
        ),*/
        Container(
            padding: EdgeInsets.all(10.0), child: Text('Película: YOUR NAME?'))
      ],
    ));
    return Container(
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(25.0),
       color: Colors.greenAccent, 
       boxShadow: <BoxShadow>[
         BoxShadow(
           color: Colors.blueAccent,
           blurRadius: 10.0,
           spreadRadius: 2.0,
           offset:  Offset(2.0 , 10.0 )
         )
       ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: card,
      ),
    );
  }
}
