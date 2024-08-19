import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeapp/core/di/service_locator.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_bloc.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_event.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_state.dart';

class PokemonView extends StatelessWidget {
  const PokemonView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonBloc>(
        create: (context) => serviceLocator()..add(const GetRemotePokemons()),
        child: BlocConsumer<PokemonBloc, PokemonState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.white,
              extendBody: true,
              appBar: _buildAppBar(),
              body: _buildBody(state, context),
            );
          },
          listener: (context, state) {
            if (state is PokemonDone) {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(state.pokemon?.name ?? ''),
                    content: Text(state.pokemon?.toString() ?? ''),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              );
            }
          },
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
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
              height: 68,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        context.read<PokemonBloc>().add(SearchLocalPokemon(query: value));
                      },
                      decoration: const InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(8)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
              itemCount: state.pokemons?.length ?? 0,
              separatorBuilder: (context, index) => const Divider(),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                var item = state.pokemons?[index];
                return Container(
                  color: index % 2 == 1 ? Colors.white : Colors.grey[100],
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 68,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () async {
                              print(0);
                              String idItem = item?.url?.split('/').reversed.toList()[1] ?? '';
                              print(1);
                              context.read<PokemonBloc>().add(GetRemotePokemon(idPokemon: idItem));
                              print(2);

                            },
                            child: ListTile(
                              title: Text(item?.name ?? ''),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            onPressed: () {
                              context.read<PokemonBloc>().add(RemoveLocalPokemon(pokemon: item!));
                            },
                            icon: const Icon(
                              Icons.remove_circle_outline,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
