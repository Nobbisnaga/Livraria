import 'package:flutter/material.dart';
import 'package:sea_atlantis/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

List<Map<String, dynamic>> _allUsers = [
    {"id":1,"name":"Rashoumon","lancamento":1950},
    {"id":2,"name":"Conde de Monte Cristo","lancamento":2002},
    {"id":3,"name":"bob","lancamento":5},
    {"id":4,"name":"barbara","lancamento":35},
    {"id":5,"name":"venti","lancamento":1000},
    {"id":6,"name":"raiden","lancamento":1500},
    {"id":7,"name":"nahida","lancamento":500},
    {"id":8,"name":"mei","lancamento":25},
    {"id":9,"name":"kiana","lancamento":24},
    {"id":10,"name":"bronya","lancamento":23}
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
              currentAccountPicture: 
              Image.asset(
                '../assets/images/bronya.jpg'
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
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                labelText: 'search', suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount:_foundUsers.length,
                itemBuilder: (context, index) =>
                
                Card(
                  key: ValueKey(_foundUsers[index]["id"]),
                  color: Colors.blue,elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    onTap: (){
                      //Click nos itens da lista
                      print(_foundUsers[index]["name"].toString());
                    },
                  leading: Text(
                    _foundUsers[index]["id"].toString(),
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                 ),
                 title: Text(_foundUsers[index]['name'],
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                 subtitle: Text('Lançamento:${_foundUsers[index]["lancamento"].toString()}',
                         style: TextStyle(color: Colors.white)),
                        ),
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}
