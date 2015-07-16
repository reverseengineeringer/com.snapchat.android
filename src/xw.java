import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

public final class xw
{
  protected final avc a;
  protected final xv b;
  
  public xw(avc paramavc)
  {
    this(paramavc, xv.a());
  }
  
  private xw(avc paramavc, xv paramxv)
  {
    a = paramavc;
    b = paramxv;
  }
  
  private static float a(avc paramavc, int paramInt)
  {
    return paramInt / paramavc.d();
  }
  
  @r
  private static avc a(int paramInt, SortedSet<avc> paramSortedSet)
  {
    if (paramSortedSet.isEmpty()) {
      return null;
    }
    Iterator localIterator = paramSortedSet.iterator();
    while (localIterator.hasNext())
    {
      avc localavc = (avc)localIterator.next();
      if (a(localavc, paramInt) >= 6.0F) {
        return localavc;
      }
    }
    return (avc)paramSortedSet.last();
  }
  
  private void a(SortedSet<avc> paramSortedSet)
  {
    TreeSet localTreeSet = new TreeSet(new avd());
    avc localavc1 = a.a(0.4000000059604645D);
    Iterator localIterator = paramSortedSet.iterator();
    while (localIterator.hasNext())
    {
      avc localavc2 = (avc)localIterator.next();
      if ((!a.b(localavc2)) || (!localavc2.b(localavc1))) {
        localTreeSet.add(localavc2);
      }
    }
    paramSortedSet.removeAll(localTreeSet);
    xv.a(paramSortedSet);
  }
  
  @r
  public final avc a(int paramInt)
  {
    Object localObject2 = b.a;
    Object localObject1 = new TreeSet(new avd());
    double d = a.a() / a.b();
    localObject2 = ((Set)localObject2).iterator();
    label161:
    while (((Iterator)localObject2).hasNext())
    {
      avc localavc = (avc)((Iterator)localObject2).next();
      int j;
      int i;
      if (d > 1.0D)
      {
        j = localavc.b();
        i = (int)(localavc.b() * d / 2.0D) * 2;
      }
      for (;;)
      {
        if ((i <= 0) || (j <= 0)) {
          break label161;
        }
        ((SortedSet)localObject1).add(new avc(i, j));
        break;
        i = localavc.a();
        j = (int)(localavc.a() / d / 2.0D) * 2;
      }
    }
    a((SortedSet)localObject1);
    localObject1 = a(paramInt, (SortedSet)localObject1);
    if (localObject1 == null) {
      return null;
    }
    new StringBuilder("Setting bitrate to ").append(paramInt).append(" resolution ").append(((avc)localObject1).a()).append("x").append(((avc)localObject1).b()).append(" bitrateperPixel: ").append(a((avc)localObject1, paramInt));
    return (avc)localObject1;
  }
}

/* Location:
 * Qualified Name:     xw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */