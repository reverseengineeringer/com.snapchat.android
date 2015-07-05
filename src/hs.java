import java.util.HashMap;
import java.util.Map;

public final class hs
  extends lt
{
  public String encFilterGeofilterId;
  private final String eventName = "GEOFILTER_STORY_SNAP_SCREENSHOT";
  private String filterGeofilterId;
  public String geoFence;
  public hy mediaType;
  public String posterId;
  public lr storyType;
  private Double viewTimeSec;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "GEOFILTER_STORY_SNAP_SCREENSHOT");
    if (encFilterGeofilterId != null) {
      localHashMap.put("enc_filter_geofilter_id", encFilterGeofilterId);
    }
    if (filterGeofilterId != null) {
      localHashMap.put("filter_geofilter_id", filterGeofilterId);
    }
    if (geoFence != null) {
      localHashMap.put("geo_fence", geoFence);
    }
    if (mediaType != null) {
      localHashMap.put("media_type", mediaType);
    }
    if (posterId != null) {
      localHashMap.put("poster_id", posterId);
    }
    if (storyType != null) {
      localHashMap.put("story_type", storyType);
    }
    if (viewTimeSec != null) {
      localHashMap.put("view_time_sec", viewTimeSec);
    }
    localHashMap.putAll(super.a());
    return localHashMap;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      if (!super.equals(paramObject)) {
        return false;
      }
      paramObject = (hs)paramObject;
      if (encFilterGeofilterId != null)
      {
        if (encFilterGeofilterId.equals(encFilterGeofilterId)) {}
      }
      else {
        while (encFilterGeofilterId != null) {
          return false;
        }
      }
      if (filterGeofilterId != null)
      {
        if (filterGeofilterId.equals(filterGeofilterId)) {}
      }
      else {
        while (filterGeofilterId != null) {
          return false;
        }
      }
      if (geoFence != null)
      {
        if (geoFence.equals(geoFence)) {}
      }
      else {
        while (geoFence != null) {
          return false;
        }
      }
      if (mediaType != null)
      {
        if (mediaType.equals(mediaType)) {}
      }
      else {
        while (mediaType != null) {
          return false;
        }
      }
      if (posterId != null)
      {
        if (posterId.equals(posterId)) {}
      }
      else {
        while (posterId != null) {
          return false;
        }
      }
      if (storyType != null)
      {
        if (storyType.equals(storyType)) {}
      }
      else {
        while (storyType != null) {
          return false;
        }
      }
      if (viewTimeSec == null) {
        break;
      }
    } while (viewTimeSec.equals(viewTimeSec));
    for (;;)
    {
      return false;
      if (viewTimeSec == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int i2 = 0;
    int i3 = super.hashCode();
    int i;
    int j;
    label39:
    int k;
    label54:
    int m;
    label70:
    int n;
    if (encFilterGeofilterId != null)
    {
      i = encFilterGeofilterId.hashCode();
      if (filterGeofilterId == null) {
        break label165;
      }
      j = filterGeofilterId.hashCode();
      if (geoFence == null) {
        break label170;
      }
      k = geoFence.hashCode();
      if (mediaType == null) {
        break label175;
      }
      m = mediaType.hashCode();
      if (posterId == null) {
        break label181;
      }
      n = posterId.hashCode();
      label86:
      if (storyType == null) {
        break label187;
      }
    }
    label165:
    label170:
    label175:
    label181:
    label187:
    for (int i1 = storyType.hashCode();; i1 = 0)
    {
      if (viewTimeSec != null) {
        i2 = viewTimeSec.hashCode();
      }
      return (i1 + (n + (m + (k + (j + (i + i3 * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i2;
      i = 0;
      break;
      j = 0;
      break label39;
      k = 0;
      break label54;
      m = 0;
      break label70;
      n = 0;
      break label86;
    }
  }
}

/* Location:
 * Qualified Name:     hs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */