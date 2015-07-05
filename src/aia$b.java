import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.GeofilterMarkup;
import com.snapchat.android.model.GeofilterMarkup.DataType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class aia$b
  implements aij.a
{
  private final aiv b;
  private final boolean c;
  private int d = 5;
  
  aia$b(aia paramaia, @cgb aiv paramaiv, @cgb boolean paramBoolean)
  {
    b = paramaiv;
    c = paramBoolean;
  }
  
  public final void a()
  {
    Timber.c("ResourcesReadyCallback", "Resources ready, creating bitmap.", new Object[0]);
    Bitmap localBitmap = a.a.a(b.mImageUrl);
    b.mBitmap = localBitmap;
    Object localObject2 = a;
    Object localObject1 = b;
    ArrayList localArrayList = new ArrayList();
    cgs localcgs = cgs.c();
    Iterator localIterator = ((aiv)localObject1).c().iterator();
    GeofilterMarkup localGeofilterMarkup;
    Object localObject3;
    String str;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localGeofilterMarkup = (GeofilterMarkup)localIterator.next();
        if (displaySchedule.a(localcgs))
        {
          localObject3 = c;
          if (type == GeofilterMarkup.DataType.TEXT)
          {
            localObject1 = displayParameters.text;
            if (!TextUtils.isEmpty((CharSequence)localObject1)) {
              break label364;
            }
            localObject1 = a;
            str = source;
            localObject1 = (String)a.a(str);
          }
        }
      }
    }
    label283:
    label364:
    for (;;)
    {
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject3 = a;
        str = displayParameters.font;
        localObject3 = (Typeface)b.a(str);
        if (localObject3 != null) {
          localObject1 = new ahy((String)localObject1, (Typeface)localObject3, localGeofilterMarkup);
        }
      }
      for (;;)
      {
        if (localObject1 == null) {
          break label283;
        }
        localArrayList.add(localObject1);
        break;
        if (type == GeofilterMarkup.DataType.IMAGE) {
          localObject1 = new ahu(a.a(source), localGeofilterMarkup);
        } else {
          localObject1 = null;
        }
      }
      break;
      if (localArrayList.size() > 0)
      {
        localObject1 = new aia.a(a, b, c);
        localObject2 = a.b;
        new ahx.a((ahx)localObject2, localBitmap, (ahx.b)localObject1, localArrayList).executeOnExecutor(a, new Void[0]);
      }
      while (!c) {
        return;
      }
      aia.a(a);
      return;
    }
  }
  
  public final void b()
  {
    int i = d;
    d = (i - 1);
    if (i > 0)
    {
      a.a.a(b, this);
      return;
    }
    Timber.c("ResourcesReadyCallback", "Could not prepare geofilter. Max attempts reached", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     aia.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */