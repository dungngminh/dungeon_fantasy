import 'package:bonfire/bonfire.dart';
import 'package:dungeon_fantasy/main.dart';
import 'package:dungeon_fantasy/ulti/functions.dart';
import 'package:dungeon_fantasy/ulti/player_sprite_sheet.dart';
import 'package:flutter/material.dart';

class MyPlayer extends SimplePlayer with Lighting, ObjectCollision {
  final Vector2 initPosition;

  MyPlayer({required this.initPosition})
      : super(
          position: initPosition,
          animation: PlayerSpriteSheet.playerAnimation(),
          width: tileSize,
          height: tileSize * 2,
          life: 200,
          speed: tileSize / 0.25,
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
              size: Size(valueByTileSize(11), valueByTileSize(13)),
              align: Vector2(valueByTileSize(3), valueByTileSize(16))),
        ],
      ),
    );
    setupLighting(
      LightingConfig(
        radius: width * 1.5,
        blurBorder: width,
        color: Colors.deepOrangeAccent.withOpacity(0.2),
      ),
    );
  }
}
