import java.util.HashMap;
import java.util.Map;

public final class hq
  extends ml
{
  public String dsnapId;
  public String editionId;
  private final String eventName = "DISCOVER_SNAP_VIEW";
  private hu exitEvent;
  public Boolean fullView;
  public Double mediaDisplayTimeSec;
  public ih mediaType;
  public String publisherId;
  public Long snapIndexCount;
  public Long snapIndexPos;
  public Double snapTimeSec;
  public lv source;
  public Double timeViewed;
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "DISCOVER_SNAP_VIEW");
    if (dsnapId != null) {
      localHashMap.put("dsnap_id", dsnapId);
    }
    if (editionId != null) {
      localHashMap.put("edition_id", editionId);
    }
    if (exitEvent != null) {
      localHashMap.put("exit_event", exitEvent);
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
      paramObject = (hq)paramObject;
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
    int i7 = 0;
    int i8 = super.hashCode();
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
    label150:
    int i5;
    if (dsnapId != null)
    {
      i = dsnapId.hashCode();
      if (editionId == null) {
        break label275;
      }
      j = editionId.hashCode();
      if (exitEvent == null) {
        break label280;
      }
      k = exitEvent.hashCode();
      if (fullView == null) {
        break label285;
      }
      m = fullView.hashCode();
      if (mediaDisplayTimeSec == null) {
        break label291;
      }
      n = mediaDisplayTimeSec.hashCode();
      if (mediaType == null) {
        break label297;
      }
      i1 = mediaType.hashCode();
      if (publisherId == null) {
        break label303;
      }
      i2 = publisherId.hashCode();
      if (snapIndexCount == null) {
        break label309;
      }
      i3 = snapIndexCount.hashCode();
      if (snapIndexPos == null) {
        break label315;
      }
      i4 = snapIndexPos.hashCode();
      if (snapTimeSec == null) {
        break label321;
      }
      i5 = snapTimeSec.hashCode();
      label166:
      if (source == null) {
        break label327;
      }
    }
    label275:
    label280:
    label285:
    label291:
    label297:
    label303:
    label309:
    label315:
    label321:
    label327:
    for (int i6 = source.hashCode();; i6 = 0)
    {
      if (timeViewed != null) {
        i7 = timeViewed.hashCode();
      }
      return (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + i8 * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i7;
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
      i5 = 0;
      break label166;
    }
  }
}

/* Location:
 * Qualified Name:     hq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */