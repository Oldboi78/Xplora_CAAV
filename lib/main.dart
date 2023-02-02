import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Teatro Degollado',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Guadalajara, Jalisco',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Color.fromRGBO(177, 151, 2, 1),
          ),
          const Text('5'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.near_me, 'Seguir Ruta'),
        _buildButtonColumn(color, Icons.share, 'Compartir'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'El Teatro Santos Degollado es un edificio de mediados del siglo XIX '
        'ubicado en la ciudad mexicana de Guadalajara. El inmueble es escenario'
        'habitual de recitales, conciertos, espectáculos de danza clásica y contemporánea. '
        'A mediados del siglo XIX se comenzó a gestar la idea de edificar un teatro digno '
        'para los habitantes de la ciudad. El 5 de marzo de 1855, bajo '
        'el gobierno de José Santos Degollado, se coloco la primera piedra de lo que '
        'sería el teatro mas tradicional de la ciudad de Guadalajara.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Lugares Conmemorativos',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lugares Conmemorativas'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/Degollado.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
