import 'package:flutter/material.dart';
import 'package:pokemon/data/models/Pokemon.dart';
import 'package:pokemon/ui/pages/detailsPokemon.dart';

class ListPokemon extends StatefulWidget {
  static const String routeName = "/pokemons";
  List<Pokemon> pokemons = [
    new Pokemon(
        id: 1,
        name: 'Tortank',
        description: 'DSAFNAKJFBSDJLBFDSA',
        height: 12.0,
        weight: 34,
        type: "EAU",
        urlImage: "pokemon6.jpeg"),
    new Pokemon(
        id: 2,
        name: 'Fushigidane',
        description: 'DAFJKADJSKFDSJKLAD',
        height: 12.0,
        weight: 34,
        type: "AQUA",
        urlImage: "pokemon2.png"),
    new Pokemon(
        id: 3,
        name: 'Florizarre',
        description: 'SDFBSDBFDSBFDSJKDS',
        height: 12.0,
        weight: 34,
        type: "Plante",
        urlImage: "pokemon3.jpeg"),
    new Pokemon(
        id: 4,
        name: 'Charmander',
        description: 'SDMSBDHJFDJFDSBJFLBDSJFBSDA',
        height: 12.0,
        weight: 34,
        type: "FEU",
        urlImage: "pokemon4.jpg"),
    new Pokemon(
        id: 5,
        name: 'Pikachu',
        description: 'lordjsvdhfahbvhjkaDKJSAHVFSHFDHJSVHJVSDABFSDFADSVJFAD',
        height: 12.0,
        weight: 34,
        type: "Electric",
        urlImage: "pokedex.png"),
  ];

  @override
  _ListPokemonState createState() => _ListPokemonState();
}

class _ListPokemonState extends State<ListPokemon> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemons"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, DetailsPokemon.routeName,
                  arguments: {"pokemon": widget.pokemons[index]});
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 100,
                  child: Image(
                    image: AssetImage("${widget.pokemons[index].urlImage}"),
                  ),
                ),
                Text(
                  "#${index}${widget.pokemons[index].name}",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.navigate_next)
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: widget.pokemons.length,
      ),
    );
  }
}
