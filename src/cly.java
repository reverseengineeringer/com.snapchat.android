import android.view.MotionEvent;

public abstract class cly
  implements clw
{
  private final clt a;
  
  public cly(clt paramclt)
  {
    a = paramclt;
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
 * Qualified Name:     cly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */