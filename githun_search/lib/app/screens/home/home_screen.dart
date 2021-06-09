import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:githun_search/app/screens/repositories/repositories_screen.dart';
import 'dart:math' as Math;
import 'package:githun_search/app/stores/home_store.dart';
import 'package:mobx/mobx.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeStore homeStore = HomeStore();

  @override
  void initState() {
    super.initState();
    when((_) => homeStore.success, () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => RepositoriesScreen(homeStore.user)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.grey[200],
      ),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    top: -16,
                    left: -20,
                    // right: 0,
                    // bottom: 0,
                    child: Transform.rotate(
                      angle: Math.pi / 180 * 135,
                      child: Image.asset(
                        'assets/image/github_logo.png',
                        height: 130,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.35),
                    padding: EdgeInsets.symmetric(horizontal: 48, vertical: 27),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Github Username:',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Observer(builder: (_) {
                              return TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    isDense: true,
                                    errorText: homeStore.usernameError),
                                onChanged: homeStore.setUserName,
                              );
                            }),
                          ],
                        ),
                        SizedBox(height: 20),
                        Observer(builder: (_) {
                          return Container(
                            height: 55,
                            child: GestureDetector(
                              onTap: homeStore.invalidSendPressed,
                              child: ElevatedButton(
                                onPressed: homeStore.searchPressed,
                                child: homeStore.loading
                                    ? CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation(Colors.grey),
                                      )
                                    : Text(
                                        'Search repositories',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) =>
                                        states.contains(MaterialState.disabled)
                                            ? Colors.white
                                            : Colors.white,
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) =>
                                              states.contains(
                                                      MaterialState.disabled)
                                                  ? Color(0xFF1DB954)
                                                  : Color(0xFF1DB954)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  )),
                                  elevation:
                                      MaterialStateProperty.all<double>(0),
                                ),
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
