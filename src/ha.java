import java.util.HashMap;
import java.util.Map;

public final class ha
  extends lt
{
  public String dsnapId;
  public String editionId;
  private final String eventName = "DISCOVER_SNAP_LONGFORM_VIEW";
  private hl exitEvent;
  public hy longformType;
  public String publisherId;
  public Long snapIndexCount;
  public Long snapIndexPos;
  public ld source;
  public Double timeViewed;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_SNAP_LONGFORM_VIEW");
    if (dsnapId != null) {
      localHashMap.put("dsnap_id", dsnapId);
    }
    if (editionId != null) {
      localHashMap.put("edition_id", editionId);
    }
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
    }
    if (longformType != null) {
      localHashMap.put("longform_type", longformType);
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
      paramObject = (ha)paramObject;
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
      if (exitEvent != null)
      {
        if (exitEvent.equals(exitEvent)) {}
      }
      else {
        while (exitEvent != null) {
          return false;
        }
      }
      if (longformType != null)
      {
        if (longformType.equals(longformType)) {}
      }
      else {
        while (longformType != null) {
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
    int i4 = 0;
    int i5 = super.hashCode();
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
    label102:
    int i2;
    if (dsnapId != null)
    {
      i = dsnapId.hashCode();
      if (editionId == null) {
        break label209;
      }
      j = editionId.hashCode();
      if (exitEvent == null) {
        break label214;
      }
      k = exitEvent.hashCode();
      if (longformType == null) {
        break label219;
      }
      m = longformType.hashCode();
      if (publisherId == null) {
        break label225;
      }
      n = publisherId.hashCode();
      if (snapIndexCount == null) {
        break label231;
      }
      i1 = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label237;
      }
      i2 = snapIndexPos.hashCode();
      label118:
      if (source == null) {
        break label243;
      }
    }
    label209:
    label214:
    label219:
    label225:
    label231:
    label237:
    label243:
    for (int i3 = source.hashCode();; i3 = 0)
    {
      if (timeViewed != null) {
        i4 = timeViewed.hashCode();
      }
      return (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i5 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i4;
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
      i2 = 0;
      break label118;
    }
  }
}

/* Location:
 * Qualified Name:     ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */