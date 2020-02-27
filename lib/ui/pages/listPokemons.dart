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
        urlImage:
            "https://www.pokepedia.fr/images/thumb/2/24/Tortank-RFVF.png/500px-Tortank-RFVF.png"),
    new Pokemon(
        id: 2,
        name: 'Fushigidane',
        description: 'DAFJKADJSKFDSJKLAD',
        height: 12.0,
        weight: 34,
        type: "AQUA",
        urlImage:
            "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png"),
    new Pokemon(
        id: 3,
        name: 'Florizarre',
        description: 'SDFBSDBFDSBFDSJKDS',
        height: 12.0,
        weight: 34,
        type: "Plante",
        urlImage:
            "https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png"),
    new Pokemon(
        id: 4,
        name: 'Charmander',
        description: 'SDMSBDHJFDJFDSBJFLBDSJFBSDA',
        height: 12.0,
        weight: 34,
        type: "FEU",
        urlImage:
            "https://www.pokepedia.fr/images/thumb/8/89/Salamèche-RFVF.png/250px-Salamèche-RFVF.png"),
    new Pokemon(
        id: 5,
        name: 'Pikachu',
        description: 'lordjsvdhfahbvhjkaDKJSAHVFSHFDHJSVHJVSDABFSDFADSVJFAD',
        height: 12.0,
        weight: 34,
        type: "Electric",
        urlImage:
            "https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png"),
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
        body: Container(
          child: Column(
              children: widget.pokemons
                  .map((pokemon) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, DetailsPokemon.routeName,
                            arguments: {"pokemon": pokemon});
                      },
                      child: Container(
                          height: 100,
                          width: 200,
                          child: Center(
                            child: Row(
                              children: <Widget>[
                                Image.network(pokemon.urlImage),
                                Text("${pokemon.id}#${pokemon.name}"),
                              ],
                            ),
                          ))))
                  .toList()),
        ));
  }
}
