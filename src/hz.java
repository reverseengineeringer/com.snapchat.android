import java.util.HashMap;
import java.util.Map;

public final class hz
  extends mk
{
  private final String eventName = "GEOFILTER_GEOFILTER_SWIPE";
  public Long filterCount;
  public String filterGeofilterId;
  public Long filterIndexCount;
  public Long filterIndexPos;
  public ih mediaType;
  public Double viewTimeSec;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "GEOFILTER_GEOFILTER_SWIPE");
    if (filterCount != null) {
      localHashMap.put("filter_count", filterCount);
    }
    if (filterGeofilterId != null) {
      localHashMap.put("filter_geofilter_id", filterGeofilterId);
    }
    if (filterIndexCount != null) {
      localHashMap.put("filter_index_count", filterIndexCount);
    }
    if (filterIndexPos != null) {
      localHashMap.put("filter_index_pos", filterIndexPos);
    }
    if (mediaType != null) {
      localHashMap.put("media_type", mediaType);
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
      paramObject = (hz)paramObject;
      if (filterCount != null)
      {
        if (filterCount.equals(filterCount)) {}
      }
      else {
        while (filterCount != null) {
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
      if (filterIndexCount != null)
      {
        if (filterIndexCount.equals(filterIndexCount)) {}
      }
      else {
        while (filterIndexCount != null) {
          return false;
        }
      }
      if (filterIndexPos != null)
      {
        if (filterIndexPos.equals(filterIndexPos)) {}
      }
      else {
        while (filterIndexPos != null) {
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
    int i1 = 0;
    int i2 = super.hashCode();
    int i;
    int j;
    label39:
    int k;
    label54:
    int m;
    if (filterCount != null)
    {
      i = filterCount.hashCode();
      if (filterGeofilterId == null) {
        break label143;
      }
      j = filterGeofilterId.hashCode();
      if (filterIndexCount == null) {
        break label148;
      }
      k = filterIndexCount.hashCode();
      if (filterIndexPos == null) {
        break label153;
      }
      m = filterIndexPos.hashCode();
      label70:
      if (mediaType == null) {
        break label159;
      }
    }
    label143:
    label148:
    label153:
    label159:
    for (int n = mediaType.hashCode();; n = 0)
    {
      if (viewTimeSec != null) {
        i1 = viewTimeSec.hashCode();
      }
      return (n + (m + (k + (j + (i + i2 * 31) * 31) * 31) * 31) * 31) * 31 + i1;
      i = 0;
      break;
      j = 0;
      break label39;
      k = 0;
      break label54;
      m = 0;
      break label70;
    }
  }
}

/* Location:
 * Qualified Name:     hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */