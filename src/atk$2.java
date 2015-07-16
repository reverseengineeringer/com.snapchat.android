import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class atk$2
  implements Runnable
{
  atk$2(atk paramatk, SwipeImageView paramSwipeImageView, asv paramasv, List paramList) {}
  
  public final void run()
  {
    atk localatk = d;
    SwipeImageView localSwipeImageView = a;
    asv localasv = b;
    List localList = c;
    ArrayList localArrayList = new ArrayList(localasv.b());
    Iterator localIterator = localasv.a().iterator();
    while (localIterator.hasNext())
    {
      asm localasm = (asm)localIterator.next();
      if (localasm.b() == FilterPageType.GEOFILTER) {
        localArrayList.add(b);
      }
    }
    localList.removeAll(localArrayList);
    localatk.a(localasv, localSwipeImageView, atk.a(localList, localSwipeImageView.getContext()));
  }
}

/* Location:
 * Qualified Name:     atk.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */