import 'package:flutter/material.dart';
import 'package:pokemon/data/models/Pokemon.dart';
import 'package:pokemon/ui/ressources/widgets/TextCustom.dart';

class DetailsPokemon extends StatelessWidget {
  static const String routeName = "/detailsPokemons";

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    Pokemon pokemonItem = new Pokemon();
    (arguments != null)
        ? pokemonItem = arguments['pokemon']
        : pokemonItem = null;

    return Scaffold(
      appBar: AppBar(
        title: TextCustom(pokemonItem.name),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 2,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 3,
                  child: Image(
                    image: AssetImage('${pokemonItem.urlImage}'),
                  ),
                ),
                Text(pokemonItem.name),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 100,
                      color: Colors.green,
                      child: Card(
                        child: Column(children: <Widget>[
                          Text('Height'),
                          Text(pokemonItem.height.toString()),
                        ]),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: Colors.green,
                      child: Card(
                        child: Column(children: <Widget>[
                          Text('Weight'),
                          Text(pokemonItem.weight.toString()),
                        ]),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Card(
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 6,
                      width: MediaQuery
                          .of(context)
                          .size
                          .height / 3,
                      child: Center(child: Text(pokemonItem.description)),
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
