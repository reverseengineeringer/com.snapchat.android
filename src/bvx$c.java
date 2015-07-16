import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable.Callback;

public final class bvx$c
{
  final RectF a = new RectF();
  final Paint b = new Paint();
  final Paint c = new Paint();
  final Paint d = new Paint();
  float e = 0.0F;
  float f = 0.0F;
  float g = 0.0F;
  float h = 5.0F;
  float i = 2.5F;
  int[] j;
  public int k;
  float l;
  float m;
  float n;
  boolean o;
  Path p;
  float q;
  double r;
  int s;
  int t;
  int u;
  public int v;
  private final Drawable.Callback w;
  
  public bvx$c(Drawable.Callback paramCallback)
  {
    w = paramCallback;
    b.setStrokeCap(Paint.Cap.SQUARE);
    b.setAntiAlias(true);
    b.setStyle(Paint.Style.STROKE);
    c.setStyle(Paint.Style.FILL);
    c.setAntiAlias(true);
    d.setAntiAlias(true);
  }
  
  public final void a()
  {
    k = ((k + 1) % j.length);
  }
  
  public final void a(float paramFloat)
  {
    e = paramFloat;
    d();
  }
  
  public final void a(boolean paramBoolean)
  {
    if (o != paramBoolean)
    {
      o = paramBoolean;
      d();
    }
  }
  
  public final void a(int[] paramArrayOfInt)
  {
    j = paramArrayOfInt;
    k = 0;
  }
  
  public final void b()
  {
    l = e;
    m = f;
    n = g;
  }
  
  public final void b(float paramFloat)
  {
    f = paramFloat;
    d();
  }
  
  public final void c()
  {
    l = 0.0F;
    m = 0.0F;
    n = 0.0F;
    a(0.0F);
    b(0.0F);
    c(0.0F);
  }
  
  public final void c(float paramFloat)
  {
    g = paramFloat;
    d();
  }
  
  final void d()
  {
    w.invalidateDrawable(null);
  }
  
  public final void d(float paramFloat)
  {
    if (paramFloat != q)
    {
      q = paramFloat;
      d();
    }
  }
}

/* Location:
 * Qualified Name:     bvx.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */