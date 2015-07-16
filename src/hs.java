import java.util.HashMap;
import java.util.Map;

public final class hs
  extends ml
{
  public String editionId;
  private final String eventName = "DISCOVER_SPLASH_VIEW";
  public Boolean fullView;
  public Double mediaDisplayTimeSec;
  public ih mediaType;
  public String publisherId;
  public Long snapIndexCount;
  public Long snapIndexPos;
  public Double snapTimeSec;
  public lv source;
  public String splashId;
  public Double timeViewed;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_SPLASH_VIEW");
    if (editionId != null) {
      localHashMap.put("edition_id", editionId);
    }
    if (fullView != null) {
      localHashMap.put("full_view", fullView);
    }
    if (mediaDisplayTimeSec != null) {
      localHashMap.put("media_display_time_sec", mediaDisplayTimeSec);
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
    if (snapTimeSec != null) {
      localHashMap.put("snap_time_sec", snapTimeSec);
    }
    if (source != null) {
      localHashMap.put("source", source);
    }
    if (splashId != null) {
      localHashMap.put("splash_id", splashId);
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
      paramObject = (hs)paramObject;
      if (editionId != null)
      {
        if (editionId.equals(editionId)) {}
      }
      else {
        while (editionId != null) {
          return false;
        }
      }
      if (fullView != null)
      {
        if (fullView.equals(fullView)) {}
      }
      else {
        while (fullView != null) {
          return false;
        }
      }
      if (mediaDisplayTimeSec != null)
      {
        if (mediaDisplayTimeSec.equals(mediaDisplayTimeSec)) {}
      }
      else {
        while (mediaDisplayTimeSec != null) {
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
      if (snapTimeSec != null)
      {
        if (snapTimeSec.equals(snapTimeSec)) {}
      }
      else {
        while (snapTimeSec != null) {
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
      if (splashId != null)
      {
        if (splashId.equals(splashId)) {}
      }
      else {
        while (splashId != null) {
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
    int i6 = 0;
    int i7 = super.hashCode();
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
    label118:
    int i3;
    label134:
    int i4;
    if (editionId != null)
    {
      i = editionId.hashCode();
      if (fullView == null) {
        break label253;
      }
      j = fullView.hashCode();
      if (mediaDisplayTimeSec == null) {
        break label258;
      }
      k = mediaDisplayTimeSec.hashCode();
      if (mediaType == null) {
        break label263;
      }
      m = mediaType.hashCode();
      if (publisherId == null) {
        break label269;
      }
      n = publisherId.hashCode();
      if (snapIndexCount == null) {
        break label275;
      }
      i1 = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label281;
      }
      i2 = snapIndexPos.hashCode();
      if (snapTimeSec == null) {
        break label287;
      }
      i3 = snapTimeSec.hashCode();
      if (source == null) {
        break label293;
      }
      i4 = source.hashCode();
      label150:
      if (splashId == null) {
        break label299;
      }
    }
    label253:
    label258:
    label263:
    label269:
    label275:
    label281:
    label287:
    label293:
    label299:
    for (int i5 = splashId.hashCode();; i5 = 0)
    {
      if (timeViewed != null) {
        i6 = timeViewed.hashCode();
      }
      return (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i7 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i6;
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
      i3 = 0;
      break label134;
      i4 = 0;
      break label150;
    }
  }
}

/* Location:
 * Qualified Name:     hs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */