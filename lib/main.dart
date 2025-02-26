import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Jesus Mota"),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff326074),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra el contenido verticalmente
            children: <Widget>[
              Text(
                "Jesus Mota Bustillos Mat: 22308051281275 Gpo: 6ºJ",
                style: TextStyle(fontSize: 20, color: Colors.indigo),
              ),
              // Primera fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los iconos horizontalmente
                children: <Widget>[
                  IconWithSubtitle(
                    icon: Icons.star,
                    subtitle: 'Favorito',
                    color: Colors.amber,
                  ),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithSubtitle(
                    icon: Icons.favorite,
                    subtitle: 'Me gusta',
                    color: Colors.red,
                  ),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithSubtitle(
                    icon: Icons.search,
                    subtitle: 'Buscar',
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los iconos horizontalmente
                children: <Widget>[
                  IconWithSubtitle(
                    icon: Icons.thumb_up,
                    subtitle: 'Like',
                    color: Colors.lightBlue,
                  ),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithSubtitle(
                    icon: Icons.thumb_down,
                    subtitle: 'Dislike',
                    color: Colors.pink,
                  ),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithSubtitle(
                    icon: Icons.catching_pokemon,
                    subtitle: 'Pokebola',
                    color: Colors.indigo,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  } //fin widgets
} //fin de mis iconos

// Widget personalizado para un icono con subtítulo
class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color color; // Nuevo parámetro para el color

  const IconWithSubtitle({
    required this.icon,
    required this.subtitle,
    required this.color, // Requerir el color
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color), // Aplicar el color al icono
        SizedBox(height: 8),
        Text(subtitle, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
