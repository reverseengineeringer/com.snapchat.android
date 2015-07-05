import com.snapchat.android.Timber;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class bge
{
  private static final double MAX_ASPECT_RATIO_ERROR = 0.1D;
  private static final String TAG = "SaveStoryToGalleryResolutionProvider";
  private final ws mDeviceVideoEncodingResolutionSet;
  private final xb mTranscodingResolutionProviderFactory;
  
  public bge()
  {
    this(xb.a(), ws.a());
  }
  
  private bge(@cgb xb paramxb, @cgb ws paramws)
  {
    mTranscodingResolutionProviderFactory = paramxb;
    mDeviceVideoEncodingResolutionSet = paramws;
  }
  
  @cgc
  private aue a(@cgb aue paramaue)
  {
    Object localObject = mDeviceVideoEncodingResolutionSet.a;
    double d3 = paramaue.c();
    paramaue = null;
    double d1 = 0.0D;
    int i = 0;
    Iterator localIterator = ((Set)localObject).iterator();
    while (localIterator.hasNext())
    {
      localObject = (aue)localIterator.next();
      double d2 = Math.abs(((aue)localObject).c() - d3) / d3;
      if (d2 <= 0.1D)
      {
        int j = ((aue)localObject).d();
        if ((paramaue != null) && (d2 >= d1) && ((d2 != d1) || (j <= i))) {
          break label125;
        }
        i = j;
        paramaue = (aue)localObject;
        d1 = d2;
      }
    }
    label125:
    for (;;)
    {
      break;
      return paramaue;
    }
  }
  
  @cgc
  private static aue a(@cgb Map<aue, aue> paramMap)
  {
    aue localaue = null;
    int i = 0;
    double d1 = 0.0D;
    Iterator localIterator = paramMap.entrySet().iterator();
    paramMap = localaue;
    while (localIterator.hasNext())
    {
      localaue = (aue)((Map.Entry)localIterator.next()).getValue();
      if (localaue != null)
      {
        int j = localaue.d();
        double d2 = localaue.c();
        if ((d1 != 0.0D) && (Math.abs(d2 - d1) > 1.0E-5D)) {
          Timber.e("SaveStoryToGalleryResolutionProvider", "Story being saved contains media with different aspect ratios.", new Object[0]);
        }
        if (j <= i) {
          break label123;
        }
        i = j;
        paramMap = localaue;
        d1 = d2;
      }
    }
    label123:
    for (;;)
    {
      break;
      return paramMap;
    }
  }
  
  @cgc
  public final aue a(@cgb Collection<aue> paramCollection)
  {
    if (paramCollection.size() == 0) {
      throw new IllegalArgumentException("No media source resolutions to compare");
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      aue localaue = (aue)localIterator.next();
      if (!localHashMap.containsKey(localaue))
      {
        paramCollection = xb.a(localaue).a(4000000);
        if (paramCollection != null) {}
        for (;;)
        {
          localHashMap.put(localaue, paramCollection);
          break;
          paramCollection = a(localaue);
        }
      }
    }
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     bge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */