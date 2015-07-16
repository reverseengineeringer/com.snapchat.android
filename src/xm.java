import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;

public class xm
{
  public static avc a(Camera.Parameters paramParameters)
  {
    paramParameters = a(paramParameters, true).iterator();
    while (paramParameters.hasNext())
    {
      avc localavc = (avc)paramParameters.next();
      if ((localavc.b() == 480) && (localavc.a() == 640)) {
        return localavc;
      }
    }
    return null;
  }
  
  protected static List<avc> a(Camera.Parameters paramParameters, boolean paramBoolean)
  {
    List localList2 = paramParameters.getSupportedVideoSizes();
    List localList1 = localList2;
    if (localList2 == null) {
      localList1 = paramParameters.getSupportedPreviewSizes();
    }
    if (localList1 == null) {
      paramParameters = new ArrayList();
    }
    do
    {
      return paramParameters;
      localList1 = b(localList1);
      paramParameters = localList1;
    } while (!paramBoolean);
    a(localList1);
    return localList1;
  }
  
  protected static void a(@chc List<avc> paramList)
  {
    paramList = paramList.iterator();
    Object localObject = new yd();
    localObject = new avc(widthPixels, heightPixels);
    while (paramList.hasNext())
    {
      avc localavc = (avc)paramList.next();
      if (localavc.a((avc)localObject))
      {
        localavc.a();
        localavc.b();
        paramList.remove();
      }
    }
  }
  
  @chc
  protected static List<avc> b(@chc List<Camera.Size> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Camera.Size localSize = (Camera.Size)paramList.next();
      if (localSize != null) {
        localArrayList.add(new avc(width, height));
      }
    }
    return localArrayList;
  }
  
  @chc
  public avc a(Camera.Parameters paramParameters, int paramInt, double paramDouble, boolean paramBoolean)
  {
    return a(a(paramParameters, true), paramDouble, paramBoolean);
  }
  
  protected final avc a(List<avc> paramList, double paramDouble, boolean paramBoolean)
  {
    double d1 = Double.MAX_VALUE;
    avc localavc = null;
    Collections.sort(paramList, new Comparator() {});
    Iterator localIterator = paramList.iterator();
    paramList = localavc;
    int i;
    if (localIterator.hasNext())
    {
      localavc = (avc)localIterator.next();
      double d2 = Math.abs(localavc.c() - paramDouble);
      localavc.a();
      localavc.b();
      localavc.c();
      if (d2 >= d1)
      {
        if (paramBoolean) {
          break label160;
        }
        if ((localavc != null) && (d2 <= d1) && (localavc.b() >= 720))
        {
          i = 1;
          label123:
          if (i == 0) {
            break label160;
          }
        }
      }
      else
      {
        d1 = d2;
        paramList = localavc;
      }
    }
    label160:
    for (;;)
    {
      break;
      i = 0;
      break label123;
      if (paramList != null)
      {
        paramList.a();
        paramList.b();
      }
      return paramList;
    }
  }
}

/* Location:
 * Qualified Name:     xm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */