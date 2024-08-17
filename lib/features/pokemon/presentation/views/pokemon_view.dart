import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_bloc.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_state.dart';

class PokemonView extends StatelessWidget {
  const PokemonView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PokemonBloc, PokemonState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBody: true,
          appBar: _buildAppBar(),
          body: _buildBody(state, context),
        );
      },
      listener: (context, state) {},
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        'Pokemons',
        style: TextStyle(
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  Widget _buildBody(PokemonState state, BuildContext context) {
    if (state is PokemonsError) {
      return Center(
        child: Text(state.error.toString()),
      );
    }
    if (state is PokemonsLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state is PokemonsDone) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            ListView.separated(
              itemCount: state.pokemons?.length ?? 0,
              separatorBuilder: (context, index) => const Divider(),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var item = state.pokemons?[index];
                return ListTile(
                  title: Text(item?.name ?? ''),
                );
              },
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
