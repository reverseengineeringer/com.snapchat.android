import com.snapchat.android.discover.model.database.table.ChannelViewDatesTable.a;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public final class acx
{
  final String a;
  final LinkedHashSet<cgg> b = new LinkedHashSet();
  private final String c;
  
  public acx(@cgb String paramString1, @cgb String paramString2)
  {
    a = paramString1;
    c = paramString2;
  }
  
  @cgb
  public final Collection<ChannelViewDatesTable.a> a()
  {
    HashSet localHashSet = new HashSet(b.size());
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      cgg localcgg = (cgg)localIterator.next();
      localHashSet.add(new ChannelViewDatesTable.a(a, c, a));
    }
    return localHashSet;
  }
  
  public final void a(@cgb cgg paramcgg)
  {
    b.add(paramcgg);
  }
  
  public final int b(@cgb cgg paramcgg)
  {
    if (b.isEmpty()) {
      return 0;
    }
    Iterator localIterator = b.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      cgg localcgg = (cgg)localIterator.next();
      long l = cgj.a(paramcgg);
      if (localcgg.c() > l) {}
      for (int j = 1;; j = 0)
      {
        if (j == 0) {
          break label80;
        }
        i += 2;
        break;
      }
      label80:
      i += 1;
    }
    return i;
  }
  
  public final String toString()
  {
    return ci.a(this).a("publisherName", a).a("publisherInternationalName", c).a("datesViewed", b).toString();
  }
}

/* Location:
 * Qualified Name:     acx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */