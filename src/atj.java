import android.view.View;
import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.ArrayList;

public final class atj
{
  public final ArrayList<ati> a = new ArrayList(11);
  public final SwipeImageView b;
  public final asv<asm> c;
  
  public atj(SwipeImageView paramSwipeImageView, asv<asm> paramasv)
  {
    b = paramSwipeImageView;
    c = paramasv;
  }
  
  public final void a()
  {
    while (!a.isEmpty()) {
      ((ati)a.remove(0)).a(b, c);
    }
    int i = 0;
    while (i < c.b())
    {
      asm localasm = c.a(i);
      if ((localasm.b() == FilterPageType.INFOFILTER) && (localasm.d() != null)) {
        localasm.d().bringToFront();
      }
      i += 1;
    }
  }
  
  public final void a(ati paramati)
  {
    a.add(paramati);
  }
}

/* Location:
 * Qualified Name:     atj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */