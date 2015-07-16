import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;

public final class arb
  extends Drawable
{
  public final Paint a;
  public float b = 0.0F;
  private final RectF c;
  private final BitmapShader d;
  private final Paint e;
  private final int f;
  private final int g;
  
  public arb(@chc Bitmap paramBitmap)
  {
    d = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    f = paramBitmap.getWidth();
    g = paramBitmap.getHeight();
    c = new RectF();
    e = new Paint();
    e.setStyle(Paint.Style.FILL);
    e.setAntiAlias(true);
    e.setShader(d);
    a = new Paint();
    a.setStyle(Paint.Style.STROKE);
    a.setAntiAlias(true);
  }
  
  public final void draw(Canvas paramCanvas)
  {
    Matrix localMatrix = new Matrix();
    RectF localRectF1 = new RectF(0.0F, 0.0F, f, g);
    RectF localRectF2 = new RectF(0.0F, 0.0F, f, g);
    localMatrix.setRectToRect(localRectF2, c, Matrix.ScaleToFit.CENTER);
    localMatrix.mapRect(localRectF1);
    localRectF1.inset(b / 2.0F, b / 2.0F);
    localMatrix.setRectToRect(localRectF2, localRectF1, Matrix.ScaleToFit.FILL);
    d.setLocalMatrix(localMatrix);
    int i = (int)Math.min(c.width(), c.height()) / 2;
    int j = (int)(i - b / 2.0F);
    paramCanvas.drawCircle(i, i, j, e);
    if (b > 0.0F) {
      paramCanvas.drawCircle(i, i, j, a);
    }
  }
  
  public final int getOpacity()
  {
    return 0;
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    c.set(paramRect);
  }
  
  public final void setAlpha(int paramInt)
  {
    e.setAlpha(paramInt);
    a.setAlpha(paramInt);
    invalidateSelf();
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    e.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
}

/* Location:
 * Qualified Name:     arb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */