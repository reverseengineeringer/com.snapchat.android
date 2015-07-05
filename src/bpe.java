import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.widget.ImageView;

final class bpe
  extends BitmapDrawable
{
  private static final Paint e = new Paint();
  Drawable a;
  long b;
  boolean c;
  int d = 255;
  private final boolean f;
  private final float g;
  private final bpd.d h;
  
  private bpe(Context paramContext, Bitmap paramBitmap, Drawable paramDrawable, bpd.d paramd, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext.getResources(), paramBitmap);
    f = paramBoolean2;
    g = getResourcesgetDisplayMetricsdensity;
    h = paramd;
    if ((paramd != bpd.d.a) && (!paramBoolean1)) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        a = paramDrawable;
        c = true;
        b = SystemClock.uptimeMillis();
      }
      return;
    }
  }
  
  private static Path a(Point paramPoint, int paramInt)
  {
    Point localPoint1 = new Point(x + paramInt, y);
    Point localPoint2 = new Point(x, y + paramInt);
    Path localPath = new Path();
    localPath.moveTo(x, y);
    localPath.lineTo(x, y);
    localPath.lineTo(x, y);
    return localPath;
  }
  
  static void a(ImageView paramImageView, Context paramContext, Bitmap paramBitmap, bpd.d paramd, boolean paramBoolean1, boolean paramBoolean2)
  {
    Drawable localDrawable = paramImageView.getDrawable();
    if ((localDrawable instanceof AnimationDrawable)) {
      ((AnimationDrawable)localDrawable).stop();
    }
    paramImageView.setImageDrawable(new bpe(paramContext, paramBitmap, localDrawable, paramd, paramBoolean1, paramBoolean2));
  }
  
  static void a(ImageView paramImageView, Drawable paramDrawable)
  {
    paramImageView.setImageDrawable(paramDrawable);
    if ((paramImageView.getDrawable() instanceof AnimationDrawable)) {
      ((AnimationDrawable)paramImageView.getDrawable()).start();
    }
  }
  
  public final void draw(Canvas paramCanvas)
  {
    if (!c) {
      super.draw(paramCanvas);
    }
    for (;;)
    {
      if (f)
      {
        e.setColor(-1);
        paramCanvas.drawPath(a(new Point(0, 0), (int)(16.0F * g)), e);
        e.setColor(h.d);
        paramCanvas.drawPath(a(new Point(0, 0), (int)(15.0F * g)), e);
      }
      return;
      float f1 = (float)(SystemClock.uptimeMillis() - b) / 200.0F;
      if (f1 >= 1.0F)
      {
        c = false;
        a = null;
        super.draw(paramCanvas);
      }
      else
      {
        if (a != null) {
          a.draw(paramCanvas);
        }
        super.setAlpha((int)(f1 * d));
        super.draw(paramCanvas);
        super.setAlpha(d);
        if (Build.VERSION.SDK_INT <= 10) {
          invalidateSelf();
        }
      }
    }
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    if (a != null) {
      a.setBounds(paramRect);
    }
    super.onBoundsChange(paramRect);
  }
  
  public final void setAlpha(int paramInt)
  {
    d = paramInt;
    if (a != null) {
      a.setAlpha(paramInt);
    }
    super.setAlpha(paramInt);
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    if (a != null) {
      a.setColorFilter(paramColorFilter);
    }
    super.setColorFilter(paramColorFilter);
  }
}

/* Location:
 * Qualified Name:     bpe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */