import 'package:flutter/material.dart';
import 'package:pokedex/Detail_page.dart';
import 'package:pokedex/model/dummyData.dart';
import 'package:pokedex/shared/widget/pokemon_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              headerArea(),
              SizedBox(height: 20),
              searchBar(searchNameController),
              SizedBox(height: 20),
              listPokemon(),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerArea() {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pokedex ',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Text(
            'Search for a Pokemeon by name or using its National Pokédex number.',
            style: TextStyle(fontSize: 20, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget searchBar(TextEditingController searchNameController) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: TextFormField(
            controller: searchNameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              hintText: 'Search Pokemon by name or number',
              prefixIcon: Icon(Icons.search, color: Color(0xFF5D5E7B)),
              fillColor: Color(0xFFEBF3F5),
              filled: true,
            ),
          ),
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0xFF5D5E7B),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(Icons.filter_list, color: Colors.white),
        ),
      ],
    );
  }

  Widget listPokemon() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 8,
          childAspectRatio: 3 / 4,
        ),
        itemCount: dummyPokemonList.length,
        itemBuilder: (context, index) {
          return PokemonCardWidget(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage(imageUrl: '', name: '', type: '',)),
              );
            },
            imageUrl: dummyPokemonList[index].imageurl,
            name: dummyPokemonList[index].name,
            type: dummyPokemonList[index].type,
          );
        },
      ),
    );
  }
}
