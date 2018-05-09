package  {
	
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.display.Shape;
	
	public class ColorRectangle extends Shape {

		public function ColorRectangle(width:Number, height:Number, color:int, container:DisplayObjectContainer = null) {
			// constructor code
			if(container == null)
				container = new Sprite();
			graphics.beginFill(color);
			graphics.drawRect(0, 0, width, height);
			graphics.endFill();
			//Directly call DisplayObject.parent will be accessive.
			container.addChild(this);
		}

	}
	
}
