import android.content.Context;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.smartfilters.GeofilterView;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class atk
  extends ati
{
  final aiy a;
  private final ast b;
  private final asw c;
  private Mediabryo.SnapType d;
  
  private atk(aiy paramaiy, ast paramast, asw paramasw, Mediabryo.SnapType paramSnapType)
  {
    a = paramaiy;
    b = paramast;
    c = paramasw;
    d = paramSnapType;
  }
  
  private atk(aiy paramaiy, ast paramast, Mediabryo.SnapType paramSnapType)
  {
    this(paramaiy, paramast, new asw(), paramSnapType);
  }
  
  public atk(Mediabryo.SnapType paramSnapType)
  {
    this(aiz.a(), new asx(), paramSnapType);
  }
  
  static List<asm> a(List<ajr> paramList, Context paramContext)
  {
    int i = paramList.size();
    new StringBuilder("Have ").append(i).append(" geofilters returned from server");
    ArrayList localArrayList = new ArrayList(i);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ajr localajr = (ajr)paramList.next();
      localArrayList.add(new ata(localajr, new GeofilterView(paramContext, localajr)));
    }
    new StringBuilder("createFilterPagesForGeofilters has ").append(localArrayList.size()).append(" current geofilters");
    return localArrayList;
  }
  
  final void a(asv<asm> paramasv, SwipeImageView paramSwipeImageView, List<asm> paramList)
  {
    int i = paramList.size() - 1;
    if (i >= 0)
    {
      asm localasm = (asm)paramList.get(i);
      if (((localasm instanceof ata)) && (d == Mediabryo.SnapType.DISCOVER) && (b.mIsSponsored)) {}
      for (int j = 0;; j = 1)
      {
        if (j != 0)
        {
          paramasv.a((asm)paramList.get(i));
          b.a(localasm);
          paramSwipeImageView.a(localasm);
        }
        i -= 1;
        break;
      }
    }
  }
  
  public final void a(final SwipeImageView paramSwipeImageView, final asv<asm> paramasv)
  {
    bhp.b(new Runnable()
    {
      public final void run()
      {
        atk localatk = atk.this;
        SwipeImageView localSwipeImageView = paramSwipeImageView;
        asv localasv = paramasv;
        Object localObject = a.c();
        ArrayList localArrayList = new ArrayList(((List)localObject).size());
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          ajr localajr = (ajr)((Iterator)localObject).next();
          if (mBitmap != null) {
            localArrayList.add(localajr);
          }
        }
        bhp.a(new atk.2(localatk, localSwipeImageView, localasv, localArrayList));
      }
    });
  }
}

/* Location:
 * Qualified Name:     atk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */