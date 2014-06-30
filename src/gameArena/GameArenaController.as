package gameArena {
import flash.display.Sprite;

import gameArena.arenaComponents.GameArenaHolder;
import gameArena.config.GameArenaConfig;

public class GameArenaController {

        private var gameArena:GameArenaHolder;

        public function GameArenaController(rootStage:Sprite) {
            gameArena = new GameArenaHolder(GameArenaConfig.ROWS_AMOUNT, GameArenaConfig.COLUMNS_AMOUNT);
            rootStage.stage.addChild(gameArena);
        }
    }
}
