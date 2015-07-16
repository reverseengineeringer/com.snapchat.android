import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.squareup.otto.Bus;

public final class atc
  extends atb
{
  private arv b;
  
  public atc(arv paramarv)
  {
    b = paramarv;
  }
  
  public final String a()
  {
    return "Speed";
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    ViewGroup localViewGroup = (ViewGroup)b.c.findViewById(2131362736);
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
    arv localarv = b;
    b.b(localarv);
    a.a(2130968750, c);
    c = null;
  }
}

/* Location:
 * Qualified Name:     atc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */