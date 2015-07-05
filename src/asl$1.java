import com.snapchat.android.Timber;
import com.snapchat.android.ui.SwipeImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class asl$1
  implements Runnable
{
  asl$1(asl paramasl, SwipeImageView paramSwipeImageView, arw paramarw) {}
  
  public final void run()
  {
    asl localasl = c;
    SwipeImageView localSwipeImageView = a;
    arw localarw = b;
    Timber.c("RefreshGeofilterPagesOperation", "Updating geofilter pages", new Object[0]);
    Object localObject = a.c();
    ArrayList localArrayList = new ArrayList(((List)localObject).size());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      aiv localaiv = (aiv)((Iterator)localObject).next();
      if (mBitmap != null) {
        localArrayList.add(localaiv);
      }
    }
    bgp.a(new asl.2(localasl, localSwipeImageView, localarw, localArrayList));
  }
}

/* Location:
 * Qualified Name:     asl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */