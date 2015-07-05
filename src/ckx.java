import android.view.MotionEvent;

public abstract class ckx
  implements ckv
{
  private final cks a;
  
  public ckx(cks paramcks)
  {
    a = paramcks;
  }
  
  public final float a(MotionEvent paramMotionEvent)
  {
    float f = paramMotionEvent.getY();
    if (f <= a.a()) {
      return 0.0F;
    }
    if (f >= a.b()) {
      return 1.0F;
    }
    return f / a.b();
  }
}

/* Location:
 * Qualified Name:     ckx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */