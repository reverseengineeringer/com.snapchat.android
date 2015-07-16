import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.TextUtils;
import com.snapchat.android.model.GeofilterMarkup;
import com.snapchat.android.model.GeofilterMarkup.DataType;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class aje
{
  private static final aje c = new aje();
  public final ajf<String> a;
  public final ajf<Typeface> b;
  private List<ajf> d = new ArrayList(3);
  private final ajf<Bitmap> e;
  
  private aje()
  {
    this(new ajd(), new ajh(), new ajc());
  }
  
  private aje(@chc ajf<String> paramajf, @chc ajf<Typeface> paramajf1, @chc ajf<Bitmap> paramajf2)
  {
    a = ((ajf)co.a(paramajf));
    d.add(a);
    b = ((ajf)co.a(paramajf1));
    d.add(b);
    e = ((ajf)co.a(paramajf2));
    d.add(e);
  }
  
  public static aje a()
  {
    return c;
  }
  
  private static void a(@chc Set<String> paramSet, @chc ajf paramajf, @chc ajg paramajg)
  {
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      paramajf.b((String)paramSet.next(), paramajg);
    }
  }
  
  @chd
  public final Bitmap a(String paramString)
  {
    return (Bitmap)e.a(paramString);
  }
  
  public final void a(@chc ajr paramajr, @chc ajf.a parama)
  {
    new StringBuilder("Preparing Geofilter ").append(mFilterId);
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    HashSet localHashSet3 = new HashSet();
    localHashSet1.add(mImageUrl);
    paramajr = paramajr.c().iterator();
    while (paramajr.hasNext())
    {
      Object localObject = (GeofilterMarkup)paramajr.next();
      if (type == GeofilterMarkup.DataType.IMAGE)
      {
        localHashSet1.add(source);
      }
      else if (type == GeofilterMarkup.DataType.TEXT)
      {
        localHashSet3.add(displayParameters.font);
        localObject = source;
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          localHashSet2.add(localObject);
        }
      }
    }
    paramajr = new ajg(localHashSet1.size() + localHashSet2.size() + localHashSet3.size(), parama);
    a(localHashSet1, e, paramajr);
    a(localHashSet2, a, paramajr);
    a(localHashSet3, b, paramajr);
  }
}

/* Location:
 * Qualified Name:     aje
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */