import 'package:bitrise_test/app/models/history.model.dart';
import 'package:bitrise_test/app/repositories/history.repository.dart';
import 'package:bitrise_test/app/views/android/favorite/favorite.view.dart';
import 'package:bitrise_test/app/views/android/list_pokemons/listpokemon.view.dart';
import 'package:bitrise_test/app/views/android/search_result/search.view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HistoryRepository repositoryHistory = HistoryRepository();
  FocusNode fieldNode = FocusNode();
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.075,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.64,
                child: Image.asset(
                  'assets/images/logo_pokemon.png',
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.86,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xFFE6245C),
                                border: Border.all(
                                    width: 2, color: const Color(0xFF052595)),
                              ),
                            ),
                            Positioned(
                              top: 3,
                              left: 7,
                              child: Container(
                                width: 4,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xFFF1EE71),
                                border: Border.all(
                                    width: 2, color: const Color(0xFF052595)),
                              ),
                            ),
                            Positioned(
                              top: 3,
                              left: 7,
                              child: Container(
                                width: 4,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xFF7AFC90),
                                border: Border.all(
                                    width: 2, color: const Color(0xFF052595)),
                              ),
                            ),
                            Positioned(
                              top: 3,
                              left: 7,
                              child: Container(
                                width: 4,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.68,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.08 *
                                  0.68,
                            ),
                            const Text(
                              "Conheça a Pokédex",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF02005B),
                                fontSize: 22,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Utilize a pokédex para encontrar mais informações sobre os seus pokémons.",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF02005B),
                                fontSize: 16,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.08 *
                                  0.68,
                            ),
                            Container(
                              height: 45,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.15),
                                    blurRadius: 8,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: TextField(
                                controller: textEditingController,
                                focusNode: fieldNode,
                                autocorrect: false,
                                enableSuggestions: false,
                                textCapitalization: TextCapitalization.words,
                                cursorColor: const Color(0xFFBDBDBD),
                                decoration: InputDecoration(
                                  isDense: true,
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFBDBDBD)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                  hintText: 'Digite o nome do pokémon...',
                                  hintStyle: const TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFFBDBDBD),
                                  ),
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: fieldNode.hasFocus
                                        ? const Color(0xFF02005B)
                                        : const Color(0xFFBDBDBD),
                                    size: 27,
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xFFBDBDBD),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xFFBDBDBD),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                ),
                                style: const TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFF4F4F4F),
                                ),
                                onChanged: (val) {
                                  if (val.isEmpty || val.length == 1) {
                                    setState(() {});
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.15 *
                                  0.68,
                            ),
                            ElevatedButton(
                              onPressed: textEditingController.text.isEmpty
                                  ? null
                                  : () async {
                                      FocusScope.of(context).unfocus();
                                      var data = await repositoryHistory
                                          .getHistories();
                                      bool aux = true;
                                      for (int i = 0; i < data.length; i++) {
                                        if (data[i].history ==
                                            textEditingController.text) {
                                          await repositoryHistory
                                              .delete(data[i].history!);
                                          await repositoryHistory.create(
                                              HistoryModel(
                                                  history: textEditingController
                                                      .text));
                                          aux = false;
                                        }
                                      }
                                      if (aux) {
                                        await repositoryHistory.create(
                                            HistoryModel(
                                                history: textEditingController
                                                    .text));

                                        if (data.length > 3) {
                                          await repositoryHistory
                                              .delete(data[0].history!);
                                        }
                                      }
                                      if (MediaQuery.of(context)
                                              .viewInsets
                                              .bottom !=
                                          0) {
                                        await Future.delayed(
                                            const Duration(milliseconds: 300));
                                      }
                                      Navigator.of(context)
                                          .push(
                                        MaterialPageRoute(
                                          builder: (context) => SearchView(
                                            namePokemon:
                                                textEditingController.text,
                                          ),
                                        ),
                                      )
                                          .then((value) {
                                        setState(() {});
                                        FocusScope.of(context).unfocus();
                                        textEditingController.text = "";
                                      });
                                    },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(0),
                                ),
                              ),
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    color: textEditingController.text.isEmpty
                                        ? const Color(0xFFBDBDBD)
                                        : const Color(0xFF02005B),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        blurRadius: 8,
                                        offset: const Offset(0, 5.0),
                                      )
                                    ]),
                                child: Center(
                                  child: Text(
                                    'PESQUISAR',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.05 *
                                  0.68,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                if (MediaQuery.of(context).viewInsets.bottom !=
                                    0) {
                                  FocusScope.of(context).unfocus();
                                  await Future.delayed(
                                      const Duration(milliseconds: 300));
                                }
                                Navigator.of(context)
                                    .push(
                                  MaterialPageRoute(
                                    builder: (context) => const FavoriteView(),
                                  ),
                                )
                                    .then((value) {
                                  setState(() {});
                                  FocusScope.of(context).unfocus();
                                  textEditingController.text = "";
                                });
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(0),
                                ),
                              ),
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFFFCB05),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        blurRadius: 8,
                                        offset: const Offset(0, 5.0),
                                      )
                                    ]),
                                child: const Center(
                                  child: Text(
                                    'VER FAVORITOS',
                                    style: TextStyle(
                                      color: Color(0xFF02005B),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.05 *
                                  0.68,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                if (MediaQuery.of(context).viewInsets.bottom !=
                                    0) {
                                  FocusScope.of(context).unfocus();
                                  await Future.delayed(
                                      const Duration(milliseconds: 300));
                                }
                                Navigator.of(context)
                                    .push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ListPokemonView(),
                                  ),
                                )
                                    .then((value) {
                                  setState(() {});
                                  FocusScope.of(context).unfocus();
                                  textEditingController.text = "";
                                });
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(0),
                                ),
                              ),
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF7AFC90),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        blurRadius: 8,
                                        offset: const Offset(0, 5.0),
                                      )
                                    ]),
                                child: const Center(
                                  child: Text(
                                    'LISTAR POKÉMONS',
                                    style: TextStyle(
                                      color: Color(0xFF02005B),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.05 *
                                  0.68,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
