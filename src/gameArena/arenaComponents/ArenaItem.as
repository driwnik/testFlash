package gameArena.arenaComponents {
import flash.display.Sprite;
import flash.events.Event;

public class ArenaItem extends Sprite{

        private var rowIndex:int;
        private var columnIndex:int;
        private var neighborhoodsList:Array;

        private var circle:Sprite;

        public function ArenaItem(rowIndex:int, columnIndex:int) {
            this.rowIndex = rowIndex;
            this.columnIndex = columnIndex;
            this.neighborhoodsList = [];

            addEventListener(Event.ADDED_TO_STAGE, createTestGraphicsObject);
        }

        private function createTestGraphicsObject(e:Event):void {
            circle = new Sprite();
            circle.x = 20*columnIndex;
            circle.y = 20*rowIndex;
            circle.graphics.beginFill(0xFFCC00);
            circle.graphics.drawCircle(10, 10, 10);
            addChild(circle);
        }

        public function addNeighborhood(neighborhood:ArenaItem):void {
            this.neighborhoodsList.push(neighborhood);
        }
    }
}
