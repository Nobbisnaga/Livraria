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
            Text("\nchapter 1"),
            Text("\nchapter 2"),
            Text("\nchapter 3"),
            Text("\nchapter 4"),
            Text("\nchapter 5"),
            Text("\nchapter 6"),
            Text("\nchapter 7"),
            Text("\nchapter 8"),
            Text("\nchapter 9"),
            Text("\nchapter 10"),
            Text("\nchapter 11"),
            Text("\nchapter 12"),
            Text("\nchapter 13"),
            Text("\nchapter 14"),
            Text("\nchapter 15"),
            Text("\nchapter 16"),
            Text("\nchapter 17"),
          ],
        ),
      ),
    );
  }
}
