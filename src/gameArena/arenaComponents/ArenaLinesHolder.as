package gameArena.arenaComponents {
    import flash.display.Sprite;
import flash.events.Event;
import flash.events.TimerEvent;
import flash.utils.Timer;

public class ArenaLinesHolder extends Sprite {

        private var linesList:Array = [];

        public function ArenaLinesHolder(linesList:Array) {
            for(var i:int = 0; i<linesList.length; i++){
                this.linesList.push(new ArenaLine(linesList[i] as Array));
            }

            for(var t:int; t<linesList.length; t++){
                (this.linesList[t] as ArenaLine).exchangeNeighborhoods();
            }

            addEventListener(Event.ADDED_TO_STAGE, onAddToStage);
        }

        private function onAddToStage(e:Event):void {
            for(var l:int = 0; l<this.linesList.length; l++){
                var line:ArenaLine = linesList[l] as ArenaLine;
                this.addChild(line);
            }
        }
    }
}
