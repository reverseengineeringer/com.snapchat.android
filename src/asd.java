import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.squareup.otto.Bus;

public final class asd
  extends asc
{
  private aqw b;
  
  public asd(aqw paramaqw)
  {
    b = paramaqw;
  }
  
  public final String a()
  {
    return "Speed";
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    ViewGroup localViewGroup = (ViewGroup)b.c.findViewById(2131362739);
    Rect localRect = new Rect();
    localViewGroup.getHitRect(localRect);
    return localRect.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
  }
  
  public final View d()
  {
    return b.c;
  }
  
  public final void e()
  {
    aqw localaqw = b;
    b.b(localaqw);
    a.a(2130968748, c);
    c = null;
  }
}

/* Location:
 * Qualified Name:     asd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */