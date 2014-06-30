package gameArena.arenaComponents {

    import flash.display.Sprite;
import flash.events.Event;

public class ArenaRowsColumnsHolder extends Sprite {

        private var rowsHolder:ArenaLinesHolder;
        private var columnsHolder:ArenaLinesHolder;

        public function ArenaRowsColumnsHolder(rowsAmount:int, columnsAmount:int) {

            var rowsList:Array = [];
            var columnsList:Array = [];

            createRowsList();
            function createRowsList():void {
                for(var u:int = 0; u<rowsAmount; u++) {
                    rowsList.push([])
                    for(var j:int = 0; j<columnsAmount; j++){
                        (rowsList[u] as Array).push(new ArenaItem(u,j));
                    }
                }
            }
            createColumnsList();
            function createColumnsList():void {
                for(var t:int = 0; t<columnsAmount; t++) {
                    columnsList.push([]);
                    for(var r:int = 0; r<rowsList.length; r++){
                        (columnsList[t] as Array).push(rowsList[r][t]);
                    }
                }
            }

            rowsHolder = new ArenaLinesHolder(rowsList);
            columnsHolder = new ArenaLinesHolder(columnsList);
            addEventListener(Event.ADDED_TO_STAGE, onAddToStage);
        }

        private function onAddToStage(e:Event):void {
            this.addChild(rowsHolder);
        }
    }
}
