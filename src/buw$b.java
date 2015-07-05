import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.shapes.OvalShape;

final class buw$b
  extends OvalShape
{
  private RadialGradient b;
  private int c;
  private Paint d = new Paint();
  private int e;
  
  public buw$b(buw parambuw, int paramInt1, int paramInt2)
  {
    c = paramInt1;
    e = paramInt2;
    float f1 = e / 2;
    float f2 = e / 2;
    float f3 = c;
    parambuw = Shader.TileMode.CLAMP;
    b = new RadialGradient(f1, f2, f3, new int[] { 1023410176, 0 }, null, parambuw);
    d.setShader(b);
  }
  
  public final void draw(Canvas paramCanvas, Paint paramPaint)
  {
    int i = a.getBounds().width();
    int j = a.getBounds().height();
    paramCanvas.drawCircle(i / 2, j / 2, e / 2 + c, d);
    paramCanvas.drawCircle(i / 2, j / 2, e / 2, paramPaint);
  }
}

/* Location:
 * Qualified Name:     buw.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */