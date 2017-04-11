package
{
import flash.display.Sprite;
import flash.text.TextField;
 
public class calculatePI extends Sprite
{
	public function calculatePI()
	{
		var times: uint = 99999999; //Change the times here!!
		
		var logText:TextField = new TextField;
		logText.text = "Calcuclate...";
		logText.width = 200;
		this.addChild(logText);
		
		var P: Number; //Final result
		
		var M: int, N: int, i: uint;
		M = 0;
		N = 0;
		i = 1;
		
		var xi: Number, yi: Number;
		
		while (i < times) {
			xi = (Math.random() * 10 + 0) / 10;
			yi = (Math.random() * 10 + 0) / 10;
			
			if (xi * xi + yi * yi <= 1) {
				M++;
			} else {
				N++;
			}
			i++;
		}
		
		P = 4 * M / times;
		trace(P);
		
		logText.text = P.toString();
		
	}
}
}