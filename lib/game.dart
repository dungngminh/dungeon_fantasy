import 'dart:math';

import 'package:bonfire/bonfire.dart';
import 'package:dungeon_fantasy/main.dart';
import 'package:dungeon_fantasy/player/my_player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game>
    with WidgetsBindingObserver
    implements GameListener {
  late GameController _controller;

  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    _controller = GameController()..addListener(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    tileSize = max(sizeScreen.height, sizeScreen.width) / 20;
    if (kDebugMode) {
      print(tileSize);
    }
    return Material(
      child: BonfireTiledWidget(
        gameController: _controller,
        joystick: Joystick(directional: JoystickDirectional()),
        map: TiledWorldMap(
          'tiled/map2.json',
          forceTileSize: Size(tileSize, tileSize),
        ),
        lightingColorGame: Colors.black.withOpacity(0.6),
        showFPS: true,
        showCollisionArea: true,
        player: MyPlayer(initPosition: Vector2(2 * tileSize, 3 * tileSize)),
        progress: Builder(builder: (context) {
          return Center(
            child: Text(
              "Loading...",
              style: GoogleFonts.pressStart2p(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          );
        }),
      ),
    );
  }

  @override
  void changeCountLiveEnemies(int count) {
    // TODO: implement changeCountLiveEnemies
  }

  @override
  void updateGame() {
    // TODO: implement updateGame
  }
}
