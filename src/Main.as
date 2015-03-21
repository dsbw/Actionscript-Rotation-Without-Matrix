package {

import flash.display.Sprite;
import flash.display.StageDisplayState;
import flash.events.Event;
import flash.text.TextField;

public class Main extends Sprite {

    var o: Sprite = new Sprite;;
    var c: Container = new Container;

    public function Main() {
        c.x = -c.width/2;
        c.y = -c.height/2;
        o.addChild(c);
        o.x = 150;
        o.y = 150;
        addChild(o);

        addEventListener(Event.ENTER_FRAME, onEnterFrame);
    }

    public function onEnterFrame(e: Event): void {
        o.rotation++;
    }
}
}
