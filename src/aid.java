import com.snapchat.android.Timber;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class aid
  implements aic
{
  private static final aid c = new aid();
  public final aie a;
  public final aib b;
  private final aho d;
  
  private aid()
  {
    this(new aie(), new aib(), aho.a());
  }
  
  private aid(aie paramaie, aib paramaib, aho paramaho)
  {
    a = paramaie;
    b = paramaib;
    d = paramaho;
  }
  
  public static aid a()
  {
    return c;
  }
  
  public final List<aiv> c()
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
        localObject2 = (aiv)((Iterator)localObject1).next();
        if (!localHashSet.contains(mFilterId)) {
          localList.add(localObject2);
        }
      }
    }
    Collections.sort(localList, new aid.a((byte)0));
    if (localList.size() > 0) {
      d.c();
    }
    Timber.c("GeofilterProviderImpl", "Returning " + localList.size() + " geofilters", new Object[0]);
    return localList;
  }
  
  final class a
    implements Comparator<aiv>
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     aid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */