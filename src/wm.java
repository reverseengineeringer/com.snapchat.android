import android.hardware.Camera.Parameters;
import com.snapchat.android.Timber;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class wm
  extends wq
{
  private final xg a;
  
  public wm(@cgb xg paramxg)
  {
    a = paramxg;
  }
  
  private static List<aue> a(List<aue> paramList1, List<aue> paramList2)
  {
    paramList1 = new ArrayList(paramList1);
    paramList2 = c(paramList2);
    Iterator localIterator = paramList1.iterator();
    while (localIterator.hasNext()) {
      if (!paramList2.contains(Double.valueOf(((aue)localIterator.next()).c()))) {
        localIterator.remove();
      }
    }
    return paramList1;
  }
  
  private static List<aue> b(@cgb Camera.Parameters paramParameters, boolean paramBoolean)
  {
    Object localObject = b(paramParameters.getSupportedPreviewSizes());
    paramParameters = (Camera.Parameters)localObject;
    if (paramBoolean)
    {
      paramParameters = new ArrayList((Collection)localObject);
      localObject = paramParameters.iterator();
      while (((Iterator)localObject).hasNext()) {
        if (!((aue)((Iterator)localObject).next()).e()) {
          ((Iterator)localObject).remove();
        }
      }
    }
    paramParameters = new ArrayList(paramParameters);
    paramParameters.removeAll(xg.b());
    return paramParameters;
  }
  
  private static Set<Double> c(List<aue> paramList)
  {
    HashSet localHashSet = new HashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localHashSet.add(Double.valueOf(((aue)paramList.next()).c()));
    }
    return localHashSet;
  }
  
  private static List<aue> d(List<aue> paramList)
  {
    paramList = new ArrayList(paramList);
    a(paramList);
    return paramList;
  }
  
  @cgc
  public final aue a(@cgb Camera.Parameters paramParameters, double paramDouble)
  {
    Timber.c("CameraPreviewSizeFinder", "Preview Size Finding: finding best HQ preview", new Object[0]);
    List localList = a(paramParameters, true);
    return a(d(a(b(paramParameters, true), localList)), paramDouble, true);
  }
  
  @cgb
  public final aue a(@cgb Camera.Parameters paramParameters, int paramInt, double paramDouble, boolean paramBoolean)
  {
    Timber.c("CameraPreviewSizeFinder", "Preview Size Finding: finding best fit preview size for AspectRatio[%f]", new Object[] { Double.valueOf(paramDouble) });
    paramDouble = super.a(paramParameters, paramInt, paramDouble, paramBoolean).c();
    List localList = a(paramParameters, false);
    paramParameters = d(b(paramParameters, false));
    localList = a(paramParameters, localList);
    if (!localList.isEmpty()) {
      paramParameters = localList;
    }
    for (;;)
    {
      Timber.c("CameraPreviewSizeFinder", "Preview Size Finding: finding best preview size from list of supported preview sizes", new Object[0]);
      return a(paramParameters, paramDouble, paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     wm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */