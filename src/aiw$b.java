import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.TextUtils;
import com.snapchat.android.model.GeofilterMarkup;
import com.snapchat.android.model.GeofilterMarkup.DataType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class aiw$b
  implements ajf.a
{
  private final ajr b;
  private final boolean c;
  private int d = 5;
  
  aiw$b(aiw paramaiw, @chc ajr paramajr, @chc boolean paramBoolean)
  {
    b = paramajr;
    c = paramBoolean;
  }
  
  public final void a()
  {
    Bitmap localBitmap = a.a.a(b.mImageUrl);
    b.mBitmap = localBitmap;
    Object localObject2 = a;
    Object localObject1 = b;
    ArrayList localArrayList = new ArrayList();
    cht localcht = cht.c();
    Iterator localIterator = ((ajr)localObject1).c().iterator();
    GeofilterMarkup localGeofilterMarkup;
    Object localObject3;
    String str;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localGeofilterMarkup = (GeofilterMarkup)localIterator.next();
        if (displaySchedule.a(localcht))
        {
          localObject3 = c;
          if (type == GeofilterMarkup.DataType.TEXT)
          {
            localObject1 = displayParameters.text;
            if (!TextUtils.isEmpty((CharSequence)localObject1)) {
              break label353;
            }
            localObject1 = a;
            str = source;
            localObject1 = (String)a.a(str);
          }
        }
      }
    }
    label272:
    label353:
    for (;;)
    {
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject3 = a;
        str = displayParameters.font;
        localObject3 = (Typeface)b.a(str);
        if (localObject3 != null) {
          localObject1 = new aiu((String)localObject1, (Typeface)localObject3, localGeofilterMarkup);
        }
      }
      for (;;)
      {
        if (localObject1 == null) {
          break label272;
        }
        localArrayList.add(localObject1);
        break;
        if (type == GeofilterMarkup.DataType.IMAGE) {
          localObject1 = new aiq(a.a(source), localGeofilterMarkup);
        } else {
          localObject1 = null;
        }
      }
      break;
      if (localArrayList.size() > 0)
      {
        localObject1 = new aiw.a(a, b, c);
        localObject2 = a.b;
        new ait.a((ait)localObject2, localBitmap, (ait.b)localObject1, localArrayList).executeOnExecutor(a, new Void[0]);
      }
      while (!c) {
        return;
      }
      aiw.a(a);
      return;
    }
  }
  
  public final void b()
  {
    int i = d;
    d = (i - 1);
    if (i > 0) {
      a.a.a(b, this);
    }
  }
}

/* Location:
 * Qualified Name:     aiw.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */