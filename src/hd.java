import java.util.HashMap;
import java.util.Map;

public final class hd
  extends lt
{
  public String dsnapId;
  public String editionId;
  private final String eventName = "DISCOVER_SNAP_SHARE_DENY";
  public hy mediaType;
  public String publisherId;
  public Long snapIndexCount;
  public Long snapIndexPos;
  private ld source;
  public Double timeViewed;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_SNAP_SHARE_DENY");
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
    if (timeViewed != null) {
      localHashMap.put("time_viewed", timeViewed);
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
      paramObject = (hd)paramObject;
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
      if (source != null)
      {
        if (source.equals(source)) {}
      }
      else {
        while (source != null) {
          return false;
        }
      }
      if (timeViewed == null) {
        break;
      }
    } while (timeViewed.equals(timeViewed));
    for (;;)
    {
      return false;
      if (timeViewed == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int i3 = 0;
    int i4 = super.hashCode();
    int i;
    int j;
    label39:
    int k;
    label54:
    int m;
    label70:
    int n;
    label86:
    int i1;
    if (dsnapId != null)
    {
      i = dsnapId.hashCode();
      if (editionId == null) {
        break label187;
      }
      j = editionId.hashCode();
      if (mediaType == null) {
        break label192;
      }
      k = mediaType.hashCode();
      if (publisherId == null) {
        break label197;
      }
      m = publisherId.hashCode();
      if (snapIndexCount == null) {
        break label203;
      }
      n = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label209;
      }
      i1 = snapIndexPos.hashCode();
      label102:
      if (source == null) {
        break label215;
      }
    }
    label187:
    label192:
    label197:
    label203:
    label209:
    label215:
    for (int i2 = source.hashCode();; i2 = 0)
    {
      if (timeViewed != null) {
        i3 = timeViewed.hashCode();
      }
      return (i2 + (i1 + (n + (m + (k + (j + (i + i4 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i3;
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
      i1 = 0;
      break label102;
    }
  }
}

/* Location:
 * Qualified Name:     hd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */