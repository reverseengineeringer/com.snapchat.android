import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import com.snapchat.android.Timber;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;

public class wq
{
  public static aue a(Camera.Parameters paramParameters)
  {
    paramParameters = a(paramParameters, true).iterator();
    while (paramParameters.hasNext())
    {
      aue localaue = (aue)paramParameters.next();
      if ((localaue.b() == 480) && (localaue.a() == 640)) {
        return localaue;
      }
    }
    return null;
  }
  
  protected static List<aue> a(Camera.Parameters paramParameters, boolean paramBoolean)
  {
    List localList2 = paramParameters.getSupportedVideoSizes();
    List localList1 = localList2;
    if (localList2 == null)
    {
      Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: preview output is the same as video output", new Object[0]);
      localList1 = paramParameters.getSupportedPreviewSizes();
    }
    if (localList1 == null)
    {
      Timber.f("VideoRecordingSizeFinder", "Can not get sizes from hardware returning empty list", new Object[0]);
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
  
  protected static void a(@cgb List<aue> paramList)
  {
    paramList = paramList.iterator();
    Object localObject = new xh();
    localObject = new aue(widthPixels, heightPixels);
    while (paramList.hasNext())
    {
      aue localaue = (aue)paramList.next();
      if (localaue.a((aue)localObject))
      {
        Timber.c("VideoRecordingSizeFinder", "Preview Size Finder: Removing [%d, %d]. TOO LARGE!", new Object[] { Integer.valueOf(localaue.a()), Integer.valueOf(localaue.b()) });
        paramList.remove();
      }
    }
  }
  
  @cgb
  protected static List<aue> b(@cgb List<Camera.Size> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Camera.Size localSize = (Camera.Size)paramList.next();
      if (localSize != null) {
        localArrayList.add(new aue(width, height));
      }
    }
    return localArrayList;
  }
  
  @cgb
  public aue a(Camera.Parameters paramParameters, int paramInt, double paramDouble, boolean paramBoolean)
  {
    Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: finding best fit video size for AspectRatio[%f]", new Object[] { Double.valueOf(paramDouble) });
    return a(a(paramParameters, true), paramDouble, paramBoolean);
  }
  
  protected final aue a(List<aue> paramList, double paramDouble, boolean paramBoolean)
  {
    double d1 = Double.MAX_VALUE;
    aue localaue = null;
    Collections.sort(paramList, new Comparator() {});
    Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: Target aspect ratio %f", new Object[] { Double.valueOf(paramDouble) });
    Iterator localIterator = paramList.iterator();
    paramList = localaue;
    int i;
    if (localIterator.hasNext())
    {
      localaue = (aue)localIterator.next();
      double d2 = Math.abs(localaue.c() - paramDouble);
      Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: [%d x %d] AR [%f] difference [%f] pickhighest [%b]", new Object[] { Integer.valueOf(localaue.a()), Integer.valueOf(localaue.b()), Double.valueOf(localaue.c()), Double.valueOf(d2), Boolean.valueOf(paramBoolean) });
      if (d2 >= d1)
      {
        if (paramBoolean) {
          break label254;
        }
        if ((localaue != null) && (d2 <= d1) && (localaue.b() >= 720))
        {
          i = 1;
          label183:
          if (i == 0) {
            break label254;
          }
        }
      }
      else
      {
        d1 = d2;
        paramList = localaue;
      }
    }
    label254:
    for (;;)
    {
      break;
      i = 0;
      break label183;
      if (paramList != null)
      {
        Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: Determined best size as [%d x %d]", new Object[] { Integer.valueOf(paramList.a()), Integer.valueOf(paramList.b()) });
        return paramList;
      }
      Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: no good preview size found", new Object[0]);
      return paramList;
    }
  }
}

/* Location:
 * Qualified Name:     wq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */