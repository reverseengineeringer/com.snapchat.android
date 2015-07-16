import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class bhe
{
  private static final double MAX_ASPECT_RATIO_ERROR = 0.1D;
  private static final String TAG = "SaveStoryToGalleryResolutionProvider";
  private final xv mDeviceVideoEncodingResolutionSet;
  private final xx mTranscodingResolutionProviderFactory;
  
  public bhe()
  {
    this(xx.a(), xv.a());
  }
  
  private bhe(@chc xx paramxx, @chc xv paramxv)
  {
    mTranscodingResolutionProviderFactory = paramxx;
    mDeviceVideoEncodingResolutionSet = paramxv;
  }
  
  @chd
  private avc a(@chc avc paramavc)
  {
    Object localObject = mDeviceVideoEncodingResolutionSet.a;
    double d3 = paramavc.c();
    paramavc = null;
    double d1 = 0.0D;
    int i = 0;
    Iterator localIterator = ((Set)localObject).iterator();
    while (localIterator.hasNext())
    {
      localObject = (avc)localIterator.next();
      double d2 = Math.abs(((avc)localObject).c() - d3) / d3;
      if (d2 <= 0.1D)
      {
        int j = ((avc)localObject).d();
        if ((paramavc != null) && (d2 >= d1) && ((d2 != d1) || (j <= i))) {
          break label125;
        }
        i = j;
        paramavc = (avc)localObject;
        d1 = d2;
      }
    }
    label125:
    for (;;)
    {
      break;
      return paramavc;
    }
  }
  
  @chd
  private static avc a(@chc Map<avc, avc> paramMap)
  {
    avc localavc = null;
    int i = 0;
    double d1 = 0.0D;
    Iterator localIterator = paramMap.entrySet().iterator();
    paramMap = localavc;
    while (localIterator.hasNext())
    {
      localavc = (avc)((Map.Entry)localIterator.next()).getValue();
      if (localavc != null)
      {
        int j = localavc.d();
        double d2 = localavc.c();
        if (d1 != 0.0D) {
          Math.abs(d2 - d1);
        }
        if (j <= i) {
          break label106;
        }
        i = j;
        paramMap = localavc;
        d1 = d2;
      }
    }
    label106:
    for (;;)
    {
      break;
      return paramMap;
    }
  }
  
  @chd
  public final avc a(@chc Collection<avc> paramCollection)
  {
    if (paramCollection.size() == 0) {
      throw new IllegalArgumentException("No media source resolutions to compare");
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      avc localavc = (avc)localIterator.next();
      if (!localHashMap.containsKey(localavc))
      {
        paramCollection = xx.a(localavc).a(4000000);
        if (paramCollection != null) {}
        for (;;)
        {
          localHashMap.put(localavc, paramCollection);
          break;
          paramCollection = a(localavc);
        }
      }
    }
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     bhe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */