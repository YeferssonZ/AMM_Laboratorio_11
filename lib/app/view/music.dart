import 'package:flutter/material.dart';
import 'add.dart';

class MusicaPage extends StatelessWidget {
  final List<String> canciones = [
    'Numb',
    'In the End',
    'Crawling',
    'Somewhere I Belong',
    'Breaking the Habit',
    'Burn it down',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reproductor de Música'),
        backgroundColor: Colors.blue[400],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.blue[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lista de Canciones',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: canciones.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.blue[300],
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(
                        canciones[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      leading: Icon(
                        Icons.music_note,
                        color: Colors.white,
                      ),
                      onTap: () {
                        mostrarMensaje(context, 'Reproduciendo: ${canciones[index]}');
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push( //aqui se implementó el metodo PUSH que pedía el laboatorio en la tarea
                  context,
                  MaterialPageRoute(builder: (context) => AgregarCancionPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[400],
              ),
              child: Text(
                'Agregar Canción',
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
