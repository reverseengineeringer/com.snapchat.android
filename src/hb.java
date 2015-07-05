import java.util.HashMap;
import java.util.Map;

public final class hb
  extends lt
{
  public String dsnapId;
  public String editionId;
  private final String eventName = "DISCOVER_SNAP_SCREENSHOT";
  public hy mediaType;
  public String publisherId;
  public Long snapIndexCount;
  public Long snapIndexPos;
  private ld source;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_SNAP_SCREENSHOT");
    if (dsnapId != null) {
      localHashMap.put("dsnap_id", dsnapId);
    }
    if (editionId != null) {
      localHashMap.put("edition_id", editionId);
    }
    if (mediaType != null) {
      localHashMap.put("media_type", mediaType);
    }
    if (publisherId != null) {
      localHashMap.put("publisher_id", publisherId);
    }
    if (snapIndexCount != null) {
      localHashMap.put("snap_index_count", snapIndexCount);
    }
    if (snapIndexPos != null) {
      localHashMap.put("snap_index_pos", snapIndexPos);
    }
    if (source != null) {
      localHashMap.put("source", source);
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
      paramObject = (hb)paramObject;
      if (dsnapId != null)
      {
        if (dsnapId.equals(dsnapId)) {}
      }
      else {
        while (dsnapId != null) {
          return false;
        }
      }
      if (editionId != null)
      {
        if (editionId.equals(editionId)) {}
      }
      else {
        while (editionId != null) {
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
      if (publisherId != null)
      {
        if (publisherId.equals(publisherId)) {}
      }
      else {
        while (publisherId != null) {
          return false;
        }
      }
      if (snapIndexCount != null)
      {
        if (snapIndexCount.equals(snapIndexCount)) {}
      }
      else {
        while (snapIndexCount != null) {
          return false;
        }
      }
      if (snapIndexPos != null)
      {
        if (snapIndexPos.equals(snapIndexPos)) {}
      }
      else {
        while (snapIndexPos != null) {
          return false;
        }
      }
      if (source == null) {
        break;
      }
    } while (source.equals(source));
    for (;;)
    {
      return false;
      if (source == null) {
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
    if (dsnapId != null)
    {
      i = dsnapId.hashCode();
      if (editionId == null) {
        break label165;
      }
      j = editionId.hashCode();
      if (mediaType == null) {
        break label170;
      }
      k = mediaType.hashCode();
      if (publisherId == null) {
        break label175;
      }
      m = publisherId.hashCode();
      if (snapIndexCount == null) {
        break label181;
      }
      n = snapIndexCount.hashCode();
      label86:
      if (snapIndexPos == null) {
        break label187;
      }
    }
    label165:
    label170:
    label175:
    label181:
    label187:
    for (int i1 = snapIndexPos.hashCode();; i1 = 0)
    {
      if (source != null) {
        i2 = source.hashCode();
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
 * Qualified Name:     hb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */