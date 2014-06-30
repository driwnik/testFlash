package gameArena.arenaComponents {

    import flash.display.Sprite;
import flash.events.Event;

public class GameArenaHolder extends Sprite {

        private var arenaRowsColumnsHolder:ArenaRowsColumnsHolder;

        public function GameArenaHolder(rowsAmount:int, columnsAmount:int) {
            arenaRowsColumnsHolder = new ArenaRowsColumnsHolder(rowsAmount, columnsAmount);
            addEventListener(Event.ADDED_TO_STAGE, initLines);
        }

        private function initLines(e:Event):void {
            addChild(arenaRowsColumnsHolder);
        }
    }
}
