import android.view.MotionEvent;
import com.snapchat.android.ui.snapeditormotion.SwipeHandlerType;

public final class asd
  implements arx
{
  public final SwipeHandlerType a(aqd paramaqd, ase paramase, int paramInt)
  {
    float f = c;
    paramase.a(paramInt);
    paramaqd.a(f);
    return null;
  }
  
  public final SwipeHandlerType a(aqd paramaqd, ase paramase, int paramInt1, int paramInt2)
  {
    if ((Math.abs(c - a[0]) > paramInt2) && (paramInt1 == 1) && (!paramaqd.f())) {
      return SwipeHandlerType.SINGLE_SWIPE;
    }
    if ((paramInt1 > 1) && (Math.abs(d - a[1]) > paramInt2) && (!paramaqd.f()))
    {
      g = paramaqd.d();
      return SwipeHandlerType.DOUBLE_SWIPE;
    }
    return null;
  }
  
  public final SwipeHandlerType a(aqd paramaqd, ase paramase, MotionEvent paramMotionEvent)
  {
    paramaqd.a(paramMotionEvent);
    return SwipeHandlerType.NO_SWIPE_STARTED;
  }
}

/* Location:
 * Qualified Name:     asd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */