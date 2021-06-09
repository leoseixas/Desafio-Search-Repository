import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:githun_search/app/model/user.dart';
import 'package:githun_search/app/screens/repositories/components/perfil_widget.dart';
import 'package:githun_search/app/stores/repositories_store.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';

class RepositoriesScreen extends StatefulWidget {
  RepositoriesScreen(this.user);

  final User user;

  @override
  _RepositoriesScreenState createState() => _RepositoriesScreenState(user);
}

class _RepositoriesScreenState extends State<RepositoriesScreen> {
  _RepositoriesScreenState(User user)
      : repositoriesStore = RepositoriesStore(user);

  final RepositoriesStore repositoriesStore;

  @override
  void initState() {
    super.initState();
    autorun((_) {
      repositoriesStore.loadRepositories();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: PerfilWidget(repositoriesStore.name),
            ),
            Expanded(
              child: Observer(
                builder: (_) {
                  if (repositoriesStore.repositoriesList.isEmpty) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.separated(
                      separatorBuilder: (_, __) {
                        return Divider(
                          height: 0.1,
                          color: Colors.grey,
                        );
                      },
                      itemCount: repositoriesStore.repositoriesList.length,
                      itemBuilder: (_, index) {
                        final repository =
                            repositoriesStore.repositoriesList[index];
                        return InkWell(
                          onTap: () async {
                            final url = repositoriesStore
                                .repositoriesList[index].urlRepository;
                            await canLaunch(url)
                                ? await launch(url)
                                : throw 'Could not launch $url';
                          },
                          child: Container(
                            child: ListTile(
                              title: Text(
                                repository.title,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              subtitle: Text(
                                  repository.description ?? 'Sem descrição'),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
