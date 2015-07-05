import android.content.Context;
import com.snapchat.android.Timber;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.smartfilters.GeofilterView;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class asl
  extends asj
{
  final aic a;
  private final aru b;
  private final arx c;
  private Mediabryo.SnapType d;
  
  private asl(aic paramaic, aru paramaru, arx paramarx, Mediabryo.SnapType paramSnapType)
  {
    a = paramaic;
    b = paramaru;
    c = paramarx;
    d = paramSnapType;
  }
  
  private asl(aic paramaic, aru paramaru, Mediabryo.SnapType paramSnapType)
  {
    this(paramaic, paramaru, new arx(), paramSnapType);
  }
  
  public asl(Mediabryo.SnapType paramSnapType)
  {
    this(aid.a(), new ary(), paramSnapType);
  }
  
  static List<arn> a(List<aiv> paramList, Context paramContext)
  {
    int i = paramList.size();
    Timber.c("RefreshGeofilterPagesOperation", "Have " + i + " geofilters returned from server", new Object[0]);
    ArrayList localArrayList = new ArrayList(i);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      aiv localaiv = (aiv)paramList.next();
      localArrayList.add(new asb(localaiv, new GeofilterView(paramContext, localaiv)));
    }
    Timber.c("RefreshGeofilterPagesOperation", "createFilterPagesForGeofilters has " + localArrayList.size() + " current geofilters", new Object[0]);
    return localArrayList;
  }
  
  final void a(arw<arn> paramarw, SwipeImageView paramSwipeImageView, List<arn> paramList)
  {
    int i = paramList.size() - 1;
    if (i >= 0)
    {
      arn localarn = (arn)paramList.get(i);
      if (((localarn instanceof asb)) && (d == Mediabryo.SnapType.DISCOVER) && (b.mIsSponsored)) {}
      for (int j = 0;; j = 1)
      {
        if (j != 0)
        {
          paramarw.a((arn)paramList.get(i));
          b.a(localarn);
          paramSwipeImageView.a(localarn);
        }
        i -= 1;
        break;
      }
    }
  }
  
  public final void a(final SwipeImageView paramSwipeImageView, final arw<arn> paramarw)
  {
    bgp.b(new Runnable()
    {
      public final void run()
      {
        asl localasl = asl.this;
        SwipeImageView localSwipeImageView = paramSwipeImageView;
        arw localarw = paramarw;
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
    });
  }
}

/* Location:
 * Qualified Name:     asl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */