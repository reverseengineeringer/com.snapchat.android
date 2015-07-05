import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.squareup.otto.Bus;

public final class asg
  extends asc
{
  private final aqx b;
  
  public asg(aqx paramaqx)
  {
    b = paramaqx;
  }
  
  public final String a()
  {
    return "Weather";
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    ViewGroup localViewGroup = (ViewGroup)b.d.findViewById(2131362848);
    Rect localRect = new Rect();
    localViewGroup.getHitRect(localRect);
    return localRect.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
  }
  
  public final View d()
  {
    return b.d;
  }
  
  public final void e()
  {
    aqx localaqx = b;
    c.b(localaqx);
    b.a(2130968781, d);
    d = null;
  }
}

/* Location:
 * Qualified Name:     asg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */