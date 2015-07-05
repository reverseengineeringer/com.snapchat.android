import android.content.Context;
import android.graphics.PointF;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewConfiguration;

public final class yd
{
  public final PointF[] a = new PointF[2];
  public final Handler b = new Handler(Looper.getMainLooper());
  public final float c;
  public final yd.a d;
  
  public yd(@cgb Context paramContext, @cgb yd.a parama)
  {
    c = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    d = parama;
  }
  
  public final void a()
  {
    a[0] = null;
    a[1] = null;
    b.removeCallbacksAndMessages(null);
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract boolean v_();
  }
}

/* Location:
 * Qualified Name:     yd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */