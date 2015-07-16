import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class aiz
  implements aiy
{
  private static final aiz c = new aiz();
  public final aja a;
  public final aix b;
  private final aik d;
  
  private aiz()
  {
    this(new aja(), new aix(), aik.a());
  }
  
  private aiz(aja paramaja, aix paramaix, aik paramaik)
  {
    a = paramaja;
    b = paramaix;
    d = paramaik;
  }
  
  public static aiz a()
  {
    return c;
  }
  
  public final List<ajr> c()
  {
    List localList = a.c();
    if (b.g)
    {
      Object localObject1 = b.c();
      HashSet localHashSet = new HashSet(localList.size() * 2);
      Object localObject2 = localList.iterator();
      while (((Iterator)localObject2).hasNext()) {
        localHashSet.add(nextmFilterId);
      }
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ajr)((Iterator)localObject1).next();
        if (!localHashSet.contains(mFilterId)) {
          localList.add(localObject2);
        }
      }
    }
    Collections.sort(localList, new aiz.a((byte)0));
    if (localList.size() > 0) {
      d.c();
    }
    new StringBuilder("Returning ").append(localList.size()).append(" geofilters");
    return localList;
  }
  
  final class a
    implements Comparator<ajr>
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     aiz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */