import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

public final class aqf
{
  protected boolean a = false;
  protected float b = -1.0F;
  private final aqf.a c;
  private final Context d;
  private float e = -1.0F;
  private float f = -1.0F;
  private int g = -1;
  private VelocityTracker h;
  
  public aqf(@cgb Context paramContext, @cgb aqf.a parama)
  {
    d = paramContext;
    c = parama;
    int i = avh.b(d);
    e = (i * 0.125F);
    f = (i * 0.25F);
    g = ((int)avh.a(200.0F, d));
  }
  
  private void a()
  {
    a = false;
    b = -1.0F;
    if (h != null)
    {
      h.recycle();
      h = null;
    }
  }
  
  public final boolean a(@cgb MotionEvent paramMotionEvent)
  {
    int i = 0;
    if (paramMotionEvent.getAction() == 1) {
      if (a)
      {
        int j = ViewConfiguration.get(d).getScaledMaximumFlingVelocity();
        paramMotionEvent = h;
        paramMotionEvent.computeCurrentVelocity(1000, j);
        if ((int)paramMotionEvent.getYVelocity() > g) {
          i = 1;
        }
        if (i != 0)
        {
          c.b();
          a();
        }
      }
    }
    for (;;)
    {
      return true;
      c.c();
      break;
      c.a();
      break;
      if (h == null) {
        h = VelocityTracker.obtain();
      }
      h.addMovement(paramMotionEvent);
      if (paramMotionEvent.getAction() == 2)
      {
        float f1;
        if (!a)
        {
          f1 = paramMotionEvent.getY();
          if ((b != -1.0F) && (f1 - b > e)) {
            a = true;
          }
        }
        if (a)
        {
          f1 = Math.min(1.0F, Math.max(0.0F, (paramMotionEvent.getY() - b) / f));
          c.a(f1);
          if (f1 == 1.0F)
          {
            a();
            c.b();
          }
        }
      }
      while (!a)
      {
        return false;
        if (paramMotionEvent.getAction() == 0) {
          b = paramMotionEvent.getY();
        }
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(float paramFloat);
    
    public abstract void b();
    
    public abstract void c();
  }
}

/* Location:
 * Qualified Name:     aqf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */