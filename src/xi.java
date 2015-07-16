import android.hardware.Camera.Parameters;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class xi
  extends xm
{
  private final yc a;
  
  public xi(@chc yc paramyc)
  {
    a = paramyc;
  }
  
  private static List<avc> a(List<avc> paramList1, List<avc> paramList2)
  {
    paramList1 = new ArrayList(paramList1);
    paramList2 = c(paramList2);
    Iterator localIterator = paramList1.iterator();
    while (localIterator.hasNext()) {
      if (!paramList2.contains(Double.valueOf(((avc)localIterator.next()).c()))) {
        localIterator.remove();
      }
    }
    return paramList1;
  }
  
  private static List<avc> b(@chc Camera.Parameters paramParameters, boolean paramBoolean)
  {
    Object localObject = b(paramParameters.getSupportedPreviewSizes());
    paramParameters = (Camera.Parameters)localObject;
    if (paramBoolean)
    {
      paramParameters = new ArrayList((Collection)localObject);
      localObject = paramParameters.iterator();
      while (((Iterator)localObject).hasNext()) {
        if (!((avc)((Iterator)localObject).next()).e()) {
          ((Iterator)localObject).remove();
        }
      }
    }
    paramParameters = new ArrayList(paramParameters);
    paramParameters.removeAll(yc.b());
    return paramParameters;
  }
  
  private static Set<Double> c(List<avc> paramList)
  {
    HashSet localHashSet = new HashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localHashSet.add(Double.valueOf(((avc)paramList.next()).c()));
    }
    return localHashSet;
  }
  
  private static List<avc> d(List<avc> paramList)
  {
    paramList = new ArrayList(paramList);
    a(paramList);
    return paramList;
  }
  
  @chd
  public final avc a(@chc Camera.Parameters paramParameters, double paramDouble)
  {
    List localList = a(paramParameters, true);
    return a(d(a(b(paramParameters, true), localList)), paramDouble, true);
  }
  
  @chc
  public final avc a(@chc Camera.Parameters paramParameters, int paramInt, double paramDouble, boolean paramBoolean)
  {
    paramDouble = super.a(paramParameters, paramInt, paramDouble, paramBoolean).c();
    List localList = a(paramParameters, false);
    paramParameters = d(b(paramParameters, false));
    localList = a(paramParameters, localList);
    if (!localList.isEmpty()) {
      paramParameters = localList;
    }
    for (;;)
    {
      return a(paramParameters, paramDouble, paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     xi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */