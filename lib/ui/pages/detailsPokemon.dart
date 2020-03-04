import 'package:flutter/material.dart';
import 'package:pokemon/data/models/Pokemon.dart';

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
        title: Text(pokemonItem.name),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Image.network(
                pokemonItem.urlImage,
                fit: BoxFit.cover,
              ),
            ),
            Text(pokemonItem.name),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(pokemonItem.weight.toString()),
                Text(pokemonItem.height.toString())
              ],
            ),
            Container(
              height: 200,
              color: Colors.blue,
              child: Text(pokemonItem.description),
            )
          ],
        ),
      ),
    );
  }
}
