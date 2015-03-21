/**
 * Created by Robert on 3/21/2015.
 */
package {
import flash.display.Bitmap;
import flash.display.DisplayObject;
import flash.display.Sprite;

public class Decoration extends Sprite {

    [Embed(source='../media/square2.png')]
    private static const Square:Class;
    private var square:Bitmap = new Square;
    public var sqr: Bitmap = square;


    public function Decoration() {
        super();
        addChild(sqr)
    }
}
}
