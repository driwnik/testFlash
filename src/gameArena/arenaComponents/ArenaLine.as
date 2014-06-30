package gameArena.arenaComponents {
import flash.display.Sprite;
import flash.events.Event;
import flash.events.TimerEvent;
import flash.utils.Timer;

public class ArenaLine extends Sprite {

        private var itemsList:Array;

        public function ArenaLine(itemsList:Array) {
            this.itemsList = itemsList;
            addEventListener(Event.ADDED_TO_STAGE, onAddToStage);
        }

        private function onAddToStage(event:Event):void {
            for(var i:int = 0; i<this.itemsList.length; i++){
                this.addChild(itemsList[i] as ArenaItem) ;
            }
        }

        public function exchangeNeighborhoods():void {
            for(var i:int = 0; i<itemsList.length; i++){
                if(i<itemsList.length){
                    var frontNeighbor:ArenaItem = itemsList[i+1] as ArenaItem;
                    (itemsList[i] as ArenaItem).addNeighborhood(frontNeighbor);
                }

                if((i-1)>=0){
                    var backNeighbor:ArenaItem = itemsList[i-1] as ArenaItem;
                    (itemsList[i] as ArenaItem).addNeighborhood(backNeighbor);
                }
            }
        }
    }
}
