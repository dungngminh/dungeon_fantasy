import 'package:bonfire/bonfire.dart';

class PlayerSpriteSheet {
  static Future<SpriteAnimation> playerIdleRight() => SpriteAnimation.load(
        'player/player_idle.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );

  static Future<SpriteAnimation> playerIdleLeft() => SpriteAnimation.load(
        'player/player_idle_left.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(32, 32),
        ),
      );

  static Future<SpriteAnimation> playerRunRight() => SpriteAnimation.load(
        'player/player_run.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(32, 32),
        ),
      );

  static Future<SpriteAnimation> playerRunLeft() => SpriteAnimation.load(
        'player/player_run_left.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(32, 32),
        ),
      );

  static SimpleDirectionAnimation playerAnimation() {
    return SimpleDirectionAnimation(
      idleLeft: SpriteAnimation.load(
        'player/player_idle_left.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(16, 32),
        ),
      ),
      idleRight: SpriteAnimation.load(
        'player/player_idle.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(16, 32),
        ),
      ),
      runLeft: SpriteAnimation.load(
        'player/player_run_left.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(16, 32),
        ),
      ),
      runRight: SpriteAnimation.load(
        'player/player_run.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(16, 32),
        ),
      ),
    );
  }
}
