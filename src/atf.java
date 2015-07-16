import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.squareup.otto.Bus;

public final class atf
  extends atb
{
  private final arw b;
  
  public atf(arw paramarw)
  {
    b = paramarw;
  }
  
  public final String a()
  {
    return "Weather";
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    ViewGroup localViewGroup = (ViewGroup)b.d.findViewById(2131362841);
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
    arw localarw = b;
    c.b(localarw);
    b.a(2130968783, d);
    d = null;
  }
}

/* Location:
 * Qualified Name:     atf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */