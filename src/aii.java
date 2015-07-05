import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.GeofilterMarkup;
import com.snapchat.android.model.GeofilterMarkup.DataType;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class aii
{
  private static final aii c = new aii();
  public final aij<String> a;
  public final aij<Typeface> b;
  private List<aij> d = new ArrayList(3);
  private final aij<Bitmap> e;
  
  private aii()
  {
    this(new aih(), new ail(), new aig());
  }
  
  private aii(@cgb aij<String> paramaij, @cgb aij<Typeface> paramaij1, @cgb aij<Bitmap> paramaij2)
  {
    a = ((aij)ck.a(paramaij));
    d.add(a);
    b = ((aij)ck.a(paramaij1));
    d.add(b);
    e = ((aij)ck.a(paramaij2));
    d.add(e);
  }
  
  public static aii a()
  {
    return c;
  }
  
  private static void a(@cgb Set<String> paramSet, @cgb aij paramaij, @cgb aik paramaik)
  {
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      paramaij.b((String)paramSet.next(), paramaik);
    }
  }
  
  @cgc
  public final Bitmap a(String paramString)
  {
    return (Bitmap)e.a(paramString);
  }
  
  public final void a(@cgb aiv paramaiv, @cgb aij.a parama)
  {
    Timber.c("GeofilterResourceProvider", "Preparing Geofilter " + mFilterId, new Object[0]);
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    HashSet localHashSet3 = new HashSet();
    localHashSet1.add(mImageUrl);
    paramaiv = paramaiv.c().iterator();
    while (paramaiv.hasNext())
    {
      Object localObject = (GeofilterMarkup)paramaiv.next();
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
    paramaiv = new aik(localHashSet1.size() + localHashSet2.size() + localHashSet3.size(), parama);
    a(localHashSet1, e, paramaiv);
    a(localHashSet2, a, paramaiv);
    a(localHashSet3, b, paramaiv);
  }
}

/* Location:
 * Qualified Name:     aii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */