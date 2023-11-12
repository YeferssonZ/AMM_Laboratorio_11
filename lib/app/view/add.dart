import 'package:flutter/material.dart';

class AgregarCancionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Canción'),
        backgroundColor: Colors.blue[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre de la Canción:',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Ingrese el nombre de la canción',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Artista:',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Ingrese el nombre del artista',
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                mostrarMensaje(context, 'Canción guardada');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[400],
              ),
              child: Text(
                'Guardar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void mostrarMensaje(BuildContext context, String mensaje) {
    final snackBar = SnackBar(content: Text(mensaje));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}


// LO DE AGREGAR TAN SOLO ES ESTATICO SIN FUNCIONALIDAD, solo eso de cancion guardada es para que se vea mas presentable