import android.view.View;
import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.ArrayList;

public final class ask
{
  public final ArrayList<asj> a = new ArrayList(11);
  public final SwipeImageView b;
  public final arw<arn> c;
  
  public ask(SwipeImageView paramSwipeImageView, arw<arn> paramarw)
  {
    b = paramSwipeImageView;
    c = paramarw;
  }
  
  public final void a()
  {
    while (!a.isEmpty()) {
      ((asj)a.remove(0)).a(b, c);
    }
    int i = 0;
    while (i < c.b())
    {
      arn localarn = c.a(i);
      if ((localarn.b() == FilterPageType.INFOFILTER) && (localarn.d() != null)) {
        localarn.d().bringToFront();
      }
      i += 1;
    }
  }
  
  public final void a(asj paramasj)
  {
    a.add(paramasj);
  }
}

/* Location:
 * Qualified Name:     ask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */