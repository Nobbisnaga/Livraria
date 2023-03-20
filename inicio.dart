import 'package:flutter/material.dart';
import 'package:sea_atlantis/books_detalhes.dart';
import 'package:sea_atlantis/janela.dart';
import 'package:sea_atlantis/main.dart';
import 'package:sea_atlantis/repositorio.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = BookRepositorio.tabela;
      mostrarDetalhes(Book book){
        Navigator.push(context, MaterialPageRoute(
          builder: (_)=> BookDetails(book:book),
          ),
          );  
      }

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: 
              Image.asset(
                '../asset/images/bronya.jpg'
                ),
              accountName: Text('Arconte Bronya'),
              accountEmail: Text('Bronya@gmail.com'),
              ),
            ListTile(
              leading: Icon(Icons.home),
              title:Text("Sea Atlantis"),
              subtitle:Text("Tela de Inicio"),
              onTap:(){
                print("Home");
              }
            ),
            ListTile(
              leading: Icon(Icons.home),
              title:Text("Logout"),
              subtitle:Text("Salvar e Fechar"),
              onTap:(){
                Navigator.of(context).pushReplacementNamed('/');
              }
            ),
          ],
        )
      ),



      
      appBar: AppBar(  
        title: Text('Sea Atlantis'),
      ),

      
      body: ListView.separated(
        itemBuilder: (BuildContext context, int book) {
          return ListTile(
            leading: Image.asset(tabela[book].icone),
            title: Text(tabela[book].nome),
            subtitle: Text(tabela[book].lancamento.toString()),
            
          onTap:()=> mostrarDetalhes(tabela[book]),
          );
        },
        
        padding: EdgeInsets.all(16), 
        separatorBuilder: (_, __) => Divider(),
        itemCount: tabela.length
        ),
    );
  }
}