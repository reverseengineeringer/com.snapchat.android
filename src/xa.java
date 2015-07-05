import android.os.Build;
import com.snapchat.android.Timber;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

public final class xa
{
  private static final Map<String, List<aue>> c;
  protected final aue a;
  protected final ws b;
  
  static
  {
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (i < 8)
    {
      localHashMap.put(new String[] { "XT1080", "XT1056", "XT1058", "XT1052", "XT1053", "XT1055", "XT1050", "XT1060" }[i], Arrays.asList(new aue[] { new aue(852, 480) }));
      i += 1;
    }
    c = Collections.unmodifiableMap(localHashMap);
  }
  
  public xa(aue paramaue)
  {
    this(paramaue, ws.a());
  }
  
  private xa(aue paramaue, ws paramws)
  {
    a = paramaue;
    b = paramws;
  }
  
  private static float a(aue paramaue, int paramInt)
  {
    return paramInt / paramaue.d();
  }
  
  @r
  private static aue a(int paramInt, SortedSet<aue> paramSortedSet)
  {
    if (paramSortedSet.isEmpty()) {
      return null;
    }
    Iterator localIterator = paramSortedSet.iterator();
    while (localIterator.hasNext())
    {
      aue localaue = (aue)localIterator.next();
      if (a(localaue, paramInt) >= 6.0F) {
        return localaue;
      }
    }
    return (aue)paramSortedSet.last();
  }
  
  private void a(SortedSet<aue> paramSortedSet)
  {
    Object localObject = new TreeSet(new auf());
    aue localaue1 = a.a(0.4000000059604645D);
    Iterator localIterator = paramSortedSet.iterator();
    while (localIterator.hasNext())
    {
      aue localaue2 = (aue)localIterator.next();
      if ((!a.b(localaue2)) || (!localaue2.b(localaue1))) {
        ((SortedSet)localObject).add(localaue2);
      }
    }
    paramSortedSet.removeAll((Collection)localObject);
    localObject = (List)c.get(Build.MODEL);
    if (localObject != null) {
      paramSortedSet.removeAll((Collection)localObject);
    }
  }
  
  @r
  public final aue a(int paramInt)
  {
    Object localObject2 = b.a;
    Object localObject1 = new TreeSet(new auf());
    double d = a.a() / a.b();
    localObject2 = ((Set)localObject2).iterator();
    label161:
    while (((Iterator)localObject2).hasNext())
    {
      aue localaue = (aue)((Iterator)localObject2).next();
      int j;
      int i;
      if (d > 1.0D)
      {
        j = localaue.b();
        i = (int)(localaue.b() * d / 2.0D) * 2;
      }
      for (;;)
      {
        if ((i <= 0) || (j <= 0)) {
          break label161;
        }
        ((SortedSet)localObject1).add(new aue(i, j));
        break;
        i = localaue.a();
        j = (int)(localaue.a() / d / 2.0D) * 2;
      }
    }
    a((SortedSet)localObject1);
    localObject1 = a(paramInt, (SortedSet)localObject1);
    if (localObject1 == null) {
      return null;
    }
    Timber.a("TranscodingResolutionProvider", "Setting bitrate to " + paramInt + " resolution " + ((aue)localObject1).a() + "x" + ((aue)localObject1).b() + " bitrateperPixel: " + a((aue)localObject1, paramInt), new Object[0]);
    return (aue)localObject1;
  }
}

/* Location:
 * Qualified Name:     xa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */