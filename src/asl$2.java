import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class asl$2
  implements Runnable
{
  asl$2(asl paramasl, SwipeImageView paramSwipeImageView, arw paramarw, List paramList) {}
  
  public final void run()
  {
    asl localasl = d;
    SwipeImageView localSwipeImageView = a;
    arw localarw = b;
    List localList = c;
    ArrayList localArrayList = new ArrayList(localarw.b());
    Iterator localIterator = localarw.a().iterator();
    while (localIterator.hasNext())
    {
      arn localarn = (arn)localIterator.next();
      if (localarn.b() == FilterPageType.GEOFILTER) {
        localArrayList.add(b);
      }
    }
    localList.removeAll(localArrayList);
    localasl.a(localarw, localSwipeImageView, asl.a(localList, localSwipeImageView.getContext()));
  }
}

/* Location:
 * Qualified Name:     asl.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */