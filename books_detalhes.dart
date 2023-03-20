import 'package:flutter/material.dart';
import 'janela.dart';

class BookDetails extends StatefulWidget {
  Book book;
  BookDetails({Key? key, required this.book}):super(key: key);

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.book.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    child:
                      Image.asset(widget.book.icone),
                      width: 100,
                      ),

                      Container(width: 5, height: 20),
                      Text(widget.book.details),
                ],
              ),
            ),
            Text(widget.book.sinopse),
          ],
        ),
      ),
    );
  }
}