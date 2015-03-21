/**
 * Created by Robert on 3/21/2015.
 */
package {
import flash.display.Sprite;
import flash.display.Bitmap;

public class Container extends Sprite {

    [Embed(source='../media/square.png')]
    private static const Square:Class;
    private var square:Bitmap = new Square;
    public var cir: Bitmap = square;

    public function Container() {
        super();
        cir.x = this.width /2;
        cir.y = this.height/2;
        addChild(cir);

        var sqr: Decoration = new Decoration();
        addChild(sqr);
    }
}
}
