import com.snapchat.android.discover.model.database.table.ChannelViewDatesTable.a;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public final class adx
{
  final String a;
  final LinkedHashSet<chh> b = new LinkedHashSet();
  private final String c;
  
  public adx(@chc String paramString1, @chc String paramString2)
  {
    a = paramString1;
    c = paramString2;
  }
  
  @chc
  public final Collection<ChannelViewDatesTable.a> a()
  {
    HashSet localHashSet = new HashSet(b.size());
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      chh localchh = (chh)localIterator.next();
      localHashSet.add(new ChannelViewDatesTable.a(a, c, a));
    }
    return localHashSet;
  }
  
  public final void a(@chc chh paramchh)
  {
    b.add(paramchh);
  }
  
  public final int b(@chc chh paramchh)
  {
    if (b.isEmpty()) {
      return 0;
    }
    Iterator localIterator = b.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      chh localchh = (chh)localIterator.next();
      long l = chk.a(paramchh);
      if (localchh.c() == l)
      {
        j = 1;
        label64:
        if (j == 0)
        {
          l = chk.a(paramchh);
          if (localchh.c() <= l) {
            break label103;
          }
        }
      }
      label103:
      for (int j = 1;; j = 0)
      {
        if (j == 0) {
          break label108;
        }
        i += 2;
        break;
        j = 0;
        break label64;
      }
      label108:
      i += 1;
    }
    return i;
  }
  
  public final String toString()
  {
    return cl.a(this).a("publisherName", a).a("publisherInternationalName", c).a("datesViewed", b).toString();
  }
}

/* Location:
 * Qualified Name:     adx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */