import android.view.MotionEvent;
import com.snapchat.android.ui.snapeditormotion.SwipeHandlerType;

public final class are
  implements aqy
{
  public final SwipeHandlerType a(aph paramaph, arf paramarf, int paramInt)
  {
    float f = c;
    paramarf.a(paramInt);
    paramaph.a(f);
    return null;
  }
  
  public final SwipeHandlerType a(aph paramaph, arf paramarf, int paramInt1, int paramInt2)
  {
    if ((Math.abs(c - a[0]) > paramInt2) && (paramInt1 == 1) && (!paramaph.f())) {
      return SwipeHandlerType.SINGLE_SWIPE;
    }
    if ((paramInt1 > 1) && (Math.abs(d - a[1]) > paramInt2) && (!paramaph.f()))
    {
      g = paramaph.d();
      return SwipeHandlerType.DOUBLE_SWIPE;
    }
    return null;
  }
  
  public final SwipeHandlerType a(aph paramaph, arf paramarf, MotionEvent paramMotionEvent)
  {
    paramaph.a(paramMotionEvent);
    return SwipeHandlerType.NO_SWIPE_STARTED;
  }
}

/* Location:
 * Qualified Name:     are
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */