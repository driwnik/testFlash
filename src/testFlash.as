package {
import controller.GameController;

import gameArena.arenaComponents.GameArenaHolder;
import gameArena.GameArenaController;
import gameArena.GameArenaController;

import gameArena.config.GameArenaConfig;

import flash.display.Sprite;

    public class testFlash extends Sprite {

        public function testFlash() {

            GameArenaConfig.ROWS_AMOUNT = 20;
            GameArenaConfig.COLUMNS_AMOUNT = 10;

            var gameController:GameController = new GameController(new GameArenaController(this));
        }
    }
}
