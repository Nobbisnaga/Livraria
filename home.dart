import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_3/receive.dart';
import 'model/model.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}


class _MyHomeState extends State<MyHome> {
 
  /*late String _nomeLivro;
  late String _capa;
  late int _sinopse;
  late String _nomeAutor;
  late String _bibliografia;

  void _getFields(){
    Livro livro = Livro(

    _nomeLivro,
    _capa,
    _sinopse,
    _nomeAutor,
    _bibliografia,
    );
    
  }*/

List<Map<String, dynamic>> _allUsers = [
{"id":1,"name":"Rashoumon","Lançado em":1950},
{"id":2,"name":"Conde de Monte Cristo","Lançado em":2002},
{"id":3,"name":"bob","Lançado em":5},
{"id":4,"name":"barbara","Lançado em":35},
{"id":5,"name":"venti","Lançado em":1000},
{"id":6,"name":"raiden","Lançado em":1500},
{"id":7,"name":"nahida","Lançado em":500},
{"id":8,"name":"mei","Lançado em":25},
{"id":9,"name":"kiana","Lançado em":24},
{"id":10,"name":"bronya","Lançado em":23}
];

List<Map<String, dynamic>> _foundUsers = [];
@override
initState() {
  _foundUsers = _allUsers;
  super.initState();
}


void _runFilter(String enteredKeyword) {
  List<Map<String, dynamic>> results = [];
  if(enteredKeyword.isEmpty){
    results = _allUsers;
  } else {
    results = _allUsers
    .where((user)=>
    user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
    .toList();
  }
  setState((){
    _foundUsers = results;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset(
                '../assets/images/bronya.png'
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
        title: Text("Sea Atlantis"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                labelText: 'Search', suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
              ),
            Expanded(
              child: ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index)=>Card(
                  key: ValueKey(_foundUsers[index]["id"]),
                  color: Colors.blue,elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    onTap:(){
                    },
                    leading: Text(
                      _foundUsers[index]["id"].toString(),
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    title: Text(_foundUsers[index]['name'],
                        style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                    subtitle: Text('Lançado em:${_foundUsers[index]["Lançado em"].toString()}',
                        style: TextStyle(color: Colors.white)),
                        ),
                ),
                ),
            ),

            


          
          ],
        ),
      )
    );
   }
  }
  

  