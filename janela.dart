import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'inicio.dart';

class MyAlert extends StatefulWidget {
  const MyAlert({super.key});

  @override
  State<MyAlert> createState() => _MyAlertState();
}

class _MyAlertState extends State<MyAlert> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
        "Rashoumom\nAkutagawa Ryuunosuke"),
       /* content: 
          Text(
          "Sinopse:Um livro de contos\nfeito por Akutagawa Ryuunosuke."
          ),*/
          
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.linked_camera)
              ),
      
          ],
       ),
    );
  }
}