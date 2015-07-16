import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public final class arc
  extends Drawable
{
  private final RectF a = new RectF();
  private final Paint b = new Paint();
  private final Paint c;
  private float d = 0.0F;
  
  public arc(int paramInt)
  {
    b.setStyle(Paint.Style.FILL);
    b.setAntiAlias(true);
    b.setColor(paramInt);
    c = new Paint();
    c.setStyle(Paint.Style.STROKE);
    c.setAntiAlias(true);
  }
  
  public final void draw(Canvas paramCanvas)
  {
    float f = Math.min(a.width(), a.height());
    int i = (int)(f / 2.0F);
    int j = (int)(i - d / 2.0F);
    if (f > 0.0F) {
      paramCanvas.drawCircle(i, i, j, b);
    }
    if (d > 0.0F) {
      paramCanvas.drawCircle(i, i, j, c);
    }
  }
  
  public final int getOpacity()
  {
    return 0;
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    a.set(paramRect);
  }
  
  public final void setAlpha(int paramInt)
  {
    b.setAlpha(paramInt);
    c.setAlpha(paramInt);
    invalidateSelf();
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    b.setColorFilter(paramColorFilter);
    c.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
}

/* Location:
 * Qualified Name:     arc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */